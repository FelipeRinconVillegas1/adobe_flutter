import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/data/datasource/customer/state_query.dart';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/dto/state_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/stream_event_change_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';
import 'address_mutation.dart';
import 'address_query.dart';

enum AddressEvent { saveAddress, deleteAddress, selectLocalAddress, updateAddress, getAddress }

abstract class AddressDatasource
    implements StreamEventChangeContract<EventDataChange<List<CustomerAddressDTO>, AddressEvent>> {
  Future<Either<ErrorHandler, List<StateDTO>>> getStatesByIdCountry(String idCountry);

  Future<Either<ErrorHandler, CustomerAddressDTO>> saveNewAddress(CustomerAddressDTO customerAddress);

  Future<Either<ErrorHandler, List<CustomerAddressDTO>>> getAddresses();

  Future<Either<ErrorHandler, bool>> deleteAddress(CustomerAddressDTO idAddress);

  Future<Either<ErrorHandler, bool>> updateAddress(CustomerAddressDTO customerAddress);
}

class AddressDatasourceImpl implements AddressDatasource {
  AddressDatasourceImpl(this._graphQLService, this.subjectEvent);

  final GraphQLService _graphQLService;

  final BehaviorSubject<EventDataChange<List<CustomerAddressDTO>, AddressEvent>> subjectEvent;

  @override
  Future<Either<ErrorHandler, List<StateDTO>>> getStatesByIdCountry(String idCountry) async {
    return secureServerCall(
      () async {
        final query = getStatesByIdCountryQuery(idCountry);
        final response = await _graphQLService.query(query);
        List<StateDTO> listState = [];
        if (response.isRight()) {
          final availableRegions = response.fold((l) => l, (r) => r.data!['country']['available_regions']);
          for (var item in availableRegions) {
            listState.add(StateDTO.fromJson(item));
          }
        }
        return response.fold(
          (l) => left(l),
          (statesData) => right(
            listState,
          ),
        );
      },
    );
  }

  @override
  Future<Either<ErrorHandler, CustomerAddressDTO>> saveNewAddress(CustomerAddressDTO customerAddress) {
    return secureServerCall(
      () async {
        final mutation = createCustomerAddress(customerAddress);
        final response = await _graphQLService.mutation(mutation);

        return response.fold(
          (l) => left(l),
          (statesData) {
            final newCustomer = CustomerAddressDTO.fromJson(statesData.data!['createCustomerAddress']);
            subjectEvent.add(EventDataChange(data: [newCustomer], eventType: AddressEvent.saveAddress));
            return right(newCustomer);
          },
        );
      },
    );
  }

  @override
  Future<Either<ErrorHandler, bool>> updateAddress(CustomerAddressDTO customerAddress) {
    return secureServerCall(
      () async {
        final mutation = updateCustomerAddress(customerAddress);
        final response = await _graphQLService.mutation(mutation);

        return response.fold(
          (l) => left(l),
          (statesData) {
            final newCustomer = CustomerAddressDTO.fromJson(statesData.data!['updateCustomerAddress']);
            subjectEvent.add(EventDataChange(data: [newCustomer], eventType: AddressEvent.updateAddress));
            return right(true);
          },
        );
      },
    );
  }

  @override
  Future<Either<ErrorHandler, List<CustomerAddressDTO>>> getAddresses() {
    return secureServerCall(
      () async {
        List<CustomerAddressDTO> listCustomerAddress = [];

        final query = getCustomerAddressesQuery();

        final response = await _graphQLService.query(query);

        if (response.isRight()) {
          final customerAddress = response.fold((l) => l, (r) => r.data!['customer']['addresses']);
          for (var item in customerAddress) {
            listCustomerAddress.add(CustomerAddressDTO.fromJson(item));
          }
        }
        return response.fold((l) => left(l), (statesData) {
          subjectEvent.add(EventDataChange(data: listCustomerAddress, eventType: AddressEvent.getAddress));
          return right(
            listCustomerAddress,
          );
        });
      },
    );
  }

  @override
  Future<Either<ErrorHandler, bool>> deleteAddress(CustomerAddressDTO addressDTO) {
    return secureServerCall(
      () async {
        final mutation = deleteCustomerAddressMutation(addressDTO.id);
        final responseResult = await _graphQLService.mutation(mutation);
        return responseResult.fold(
          (l) => left(l),
          (response) {
            subjectEvent.add(EventDataChange(data: [addressDTO], eventType: AddressEvent.deleteAddress));
            return right(true);
          },
        );
      },
    );
  }

  @override
  ValueStream<EventDataChange<List<CustomerAddressDTO>, AddressEvent>> getStreamEventChangeData() {
    return subjectEvent.stream;
  }
}

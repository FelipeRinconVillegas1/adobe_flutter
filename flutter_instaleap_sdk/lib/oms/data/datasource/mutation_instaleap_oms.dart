import '../../domain/entity/instaleap_availability_input.fr.dart';

String mutationInstaleapOms(InstaleapAvailabilityInput input) => '''
mutation InstaleapAvailability {
    instaleapAvailability(
        input: {
            ${input.toParamMutation()}
        }
    ) {
        description
        expires_at
        from
        id
        operational_model
        shipping_fee
        to
        store {
            id
            name
        }
    }
}
''';


String mutationInstaleapSaveSelectedSlotOms(String slotId, String cartId) => '''
mutation InstaleapSaveSelectedSlot {
    instaleapSaveSelectedSlot(input: { cartId: "$cartId", slotId: "$slotId" }) {
        success
    }
}
''';
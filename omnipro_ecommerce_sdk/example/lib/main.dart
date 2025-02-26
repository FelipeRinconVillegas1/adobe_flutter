import 'package:core/domain/entity/categories.dart';
import 'package:core/domain/entity/omnipro_config/omnipro_configuration.fr.dart';
import 'package:core/init/setup_omnipro_sdk.dart';
import 'package:core/utils/init_widget_secure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omnipro_ecommerce_sdk/store/home/di/di_categories.fr.dart';
import 'package:omnipro_ecommerce_sdk/store/home/domain/use_case/get_categoriesby_filter_use_case.dart';

void main() {
  runApp(const ProviderScope(observers: [], child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late GetCategoriesByFilterUseCase _getCategoriesByFilterUseCase;
  String response = "";

  @override
  void initState() {
    super.initState();
    init();
    secureInitWidget((_) {
      _getCategoriesByFilterUseCase = ref.watch(getCategoriesByFilterUseCaseProvider);
    });
  }

  void init() {
    SetupOnmiproSdk.init(
      config: OmniproConfiguration(
        urlHostMagento: "https://mcstaging.super99.com/graphql",
        defaultCountryCode: "507",
        defaultCountryIso: "PA",
        defaultCountryNameEn: "Panama",
        defaultCountryNameEs: "Panamá",
        defaultLocaleCurrency: "en_US",
        defaultSymbolCurrency: "\$",
        headersMagentoGraphQL: {'Store': 'super99_app_store_view'},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ElevatedButton(onPressed: ()  async {
                        final result = await _getCategoriesByFilterUseCase.call(
                          filter: {
                            'parent_id': {
                              'in': ["2"]
                            }
                          },
                          currentPage: 1,
                        );
                         result.fold((l) {
                           print("Error: $l");
                         }, (categories) {
                          setState(() {
                            response = categories.toString();
                          });
                        });
                      }, child: Text("Obtener categorias"))],
                    ),
                  ],
                ),
              ),
              Expanded(child: Text(response))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:core/domain/entity/omnipro_config/omnipro_configuration.fr.dart';
import 'package:core/init/setup_omnipro_sdk.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    init();
    super.initState();
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
        body: Column(
          children: [

          ],
        ),
      ),
    );
  }
}

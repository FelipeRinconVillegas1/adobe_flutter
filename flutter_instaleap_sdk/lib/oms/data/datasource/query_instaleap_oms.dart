import '../../domain/entity/input_stock_product.fr.dart';

String queryCheckSlotInstaleapOms(String id) => '''
query InstaleapCheckSlot {
    instaleapCheckSlot(slotId: "$id") {
        slot_valid
    }
}
''';

String queryGetStockDataInstaleapOms(InputStockProduct input) => '''
query InstaleapGetstockdata {
    instaleapGetstockdata(
        sourceCode: "${input.sourceCode}",
        product: { name: "${input.productName}", presentation: { unit: "${input.productUnit}" }, barcodes: ["${input.barcodes.join('""')}"] }
    ) {
        quantity
        unit
    }
}
''';

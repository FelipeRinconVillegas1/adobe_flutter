import 'package:core/domain/entity/products.dart';
import 'package:design_system/atoms/data_models/related_products_card_data.dart';
import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    super.key,
    required this.products,
    required this.data,
  });

  final ProductsItems products;
  final RelatedProductsCardData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: data.width,
      padding: data.padding,
      constraints: BoxConstraints(
        minHeight: data.height ?? 0,
      ),
      decoration: BoxDecoration(
        color: data.backgroundColor,
        borderRadius: BorderRadius.circular(data.borderRadius ?? 0),
        boxShadow: [
          BoxShadow(
            color: data.shadowColor ?? Colors.transparent,
            offset: data.offset ?? const Offset(0, 0),
            blurRadius: data.blurRadius ?? 0,
            spreadRadius: 0,
          ),
        ],
      ),
      child: data.child,
    );
  }
}

class RelatedProducstCard extends StatelessWidget {
  const RelatedProducstCard({
    super.key,
    required this.products,
    required this.data,
  });

  final ProductsItems products;
  final RelatedProductsCardData data;

  @override
  Widget build(BuildContext context) {
    return VerticalCard(data: data.relatedProducts(products), products: products);
  }
}

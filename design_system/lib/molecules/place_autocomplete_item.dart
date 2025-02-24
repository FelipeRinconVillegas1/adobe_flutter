import 'package:flutter/material.dart';

class PlaceAutocompleteItem extends StatelessWidget {
  const PlaceAutocompleteItem(
      {super.key, required this.onTap, required this.primaryText, required this.secondaryText, required this.leftIcon});

  final Function() onTap;
  final String primaryText;
  final String secondaryText;
  final Widget leftIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTap(),
      leading: leftIcon,
      title: Text(primaryText),
      subtitle: Text(secondaryText),
    );
  }
}

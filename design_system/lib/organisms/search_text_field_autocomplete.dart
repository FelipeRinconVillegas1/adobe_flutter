import 'package:design_system/molecules/search_text_field.dart';
import 'package:flutter/cupertino.dart';

/// SearchTextFieldAutocomplete is a widget that allows you to search for a text
/// and show a list of predictions.
class SearchTextFieldAutocomplete extends StatelessWidget {
  const SearchTextFieldAutocomplete({
    super.key,
    required this.params,
  }) : super();

  /// Custom Ui params for the widget
  final SearchTextFieldAutocompleteParams params;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTextField(
          style: params.styleSearchTextField,
          params: SearchTextFieldParams(
            hintText: params.placeholder,
            onTap: params.onTap,
            controller: params.controller,
            focusNode: params.focusNode,
            onSubmitted: params.onSubmitted,
          ),
        ),
        SizedBox(height: params.spaceBetweenSearchAndList),
        if (params.body != null) params.body!,
      ],
    );
  }
}

class SearchTextFieldAutocompleteParams {
  SearchTextFieldAutocompleteParams({
    required this.controller,
    required this.focusNode,
    this.styleSearchTextField,
    this.body,
    this.onTap,
    this.placeholder,
    this.onSubmitted,
    required this.spaceBetweenSearchAndList,
  });

  /// Space between search text field and list
  final double spaceBetweenSearchAndList;
  final SearchTextFieldStyle? styleSearchTextField;
  final TextEditingController controller;
  final Function()? onTap;
  final Function(String value)? onSubmitted;
  final FocusNode focusNode;
  final String? placeholder;
  final Widget? body;
}

/// SearchTextFieldAutocompleteData is a widget that allows you to show a list of predictions.
class SearchTextFieldAutocompleteData extends StatelessWidget {
  const SearchTextFieldAutocompleteData({super.key, required this.params});

  final SearchTextFieldAutocompleteDataParams params;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: params.predictionListLength,
      itemBuilder: (context, index) => params.itemBuilder(context, index),
    );
  }
}

class SearchTextFieldAutocompleteDataParams {
  final int predictionListLength;
  final Widget? Function(BuildContext, int) itemBuilder;

  SearchTextFieldAutocompleteDataParams({required this.predictionListLength, required this.itemBuilder});
}

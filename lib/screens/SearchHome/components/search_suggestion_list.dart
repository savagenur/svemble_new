import 'package:flutter/material.dart';
import 'package:svemble_new/size_config.dart';

import '../../../constants.dart';

class SearchSuggestionList extends StatefulWidget {
  final void Function(String) setQueryFunction;
  final List<String> suggestions;
  final bool isHistory;
  final String query;
  const SearchSuggestionList({
    Key? key,
    required this.setQueryFunction,
    required this.suggestions,
    this.isHistory = false,
    required this.query,
  }) : super(key: key);
  @override
  State<SearchSuggestionList> createState() => _SearchSuggestionListState();
}

class _SearchSuggestionListState extends State<SearchSuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.suggestions.length,
        itemBuilder: (BuildContext context, int index) {
          final suggestion = widget.suggestions[index];
          final query = widget.query;
          final queryText = suggestion.substring(0, query.length);
          final remainingText = suggestion.substring(query.length);
          return ListTile(
            onTap: () => widget.setQueryFunction(widget.suggestions[index]),
            contentPadding:
                EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            title: Text.rich(TextSpan(
                text: queryText,
                style: defaultTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(
                    text: remainingText,
                    style: defaultTextStyle.copyWith(
                      fontWeight: FontWeight.normal,
                      color: kTextColor,
                    ),
                  )
                ])),
            trailing: widget.isHistory
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        widget.suggestions.remove(widget.suggestions[index]);
                      });
                    },
                    icon: const Icon(Icons.clear),
                  )
                : null,
          );
        },
      ),
    );
  }
}

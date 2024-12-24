import 'package:flutter/material.dart';
import 'package:svemble_new/data/search_history.dart';
import 'package:svemble_new/size_config.dart';

import 'bottom_filter_sheet.dart';
import 'recent_and_clear_all.dart';
import 'search_suggestion_list.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late TextEditingController searchController;
  String query = '';
  late List<String> suggestions;
  @override
  void initState() {
    searchController = TextEditingController();
    suggestions = allSuggestions;
    searchController.addListener(() {
      setState(() {
        query = searchController.text;
        suggestions = query.isEmpty
            ? allSearchHistory
            : allSuggestions.where((product) {
                final productLower = product.toLowerCase();
                final queryLower = query.toLowerCase();
                return productLower.startsWith(queryLower);
              }).toList();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            child: buildSearchTextField(context),
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            child: RecentAndClearAll(searchController: searchController),
          ),
          SizedBox(
            height: getPropScreenWidth(10),
          ),
          const Divider(),
          SearchSuggestionList(
            query: query,
            isHistory: query.isEmpty ? true : false,
            suggestions: suggestions,
            setQueryFunction: buildSetQuery,
          ),
        ],
      ),
    );
  }

  TextFormField buildSearchTextField(BuildContext context) {
    return TextFormField(
      controller: searchController,
      autofocus: true,
      onTap: () {},
      decoration: InputDecoration(
        hintText: "Поиск",
        prefixIcon: const Icon(Icons.search),
        suffixIcon: IconButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return ClipRRect(
                      borderRadius:
                          BorderRadius.circular(getPropScreenWidth(40)),
                      child: const BottomFilterSheet());
                });
          },
          icon: const Icon(
            Icons.filter_alt_outlined,
          ),
        ),
      ),
    );
  }

  void buildSetQuery(String query) {
    searchController.text = query;
  }
}

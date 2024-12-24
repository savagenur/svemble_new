import 'package:flutter/material.dart';
import 'package:svemble_new/screens/SearchHome/search_home_screen.dart';

import '../../../size_config.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, SearchHomeScreen.routeName),
        child: TextFormField(
          onTap: () {
            // Learn FocusScope.of(context).requestFocus(FocusNode());
            // FocusManager.instance.primaryFocus!.unfocus();
          },
          decoration: const InputDecoration(
            enabled: false,
            hintText: "Поиск",
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(
              Icons.filter_alt_outlined,
            ),
          ),
        ),
      ),
    );
  }
}

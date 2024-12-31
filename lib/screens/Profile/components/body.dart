import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/data/profile_items.dart';
import 'package:svemble_new/core/utils/size_config.dart';

import 'header_profile.dart';
import 'leave_account_tile.dart';

class Body extends StatelessWidget {

  const Body({super.key, });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderProfile(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: allProfileItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    var profileItem = allProfileItems[index];
                    return ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, profileItem["routeName"]);
                      },
                      minLeadingWidth: 0,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: getPropScreenWidth(20)),
                      leading: Icon(
                        profileItem["icon"],
                        color: kPrimaryColor,
                      ),
                      title: Text(
                        profileItem["title"],
                        style: defaultTextStyle,
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: kPrimaryColor,
                      ),
                    );
                  },
                ),
                 LeaveAccountTile(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

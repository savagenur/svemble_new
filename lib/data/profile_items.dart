import 'package:flutter/material.dart';
import 'package:svemble_new/screens/AddressProfile/address_profile_screen.dart';
import 'package:svemble_new/screens/EditProfile/edit_profile_screen.dart';
import 'package:svemble_new/screens/HelpCenter/help_center_screen.dart';
import 'package:svemble_new/screens/InviteFriends/invite_friends_screen.dart';
import 'package:svemble_new/screens/NotificationProfile/notification_profile_screen.dart';

List<Map<String, dynamic>> allProfileItems = [
  {
    "title": "Редактировать Профиль",
    "icon": Icons.person_outline,
    "routeName": EditProfileScreen.routeName,
  },
  {
    "title": "Адрес",
    "icon": Icons.location_on_outlined,
    "routeName": AddressProfileScreen.routeName,
  },
  {
    "title": "Уведомление",
    "icon": Icons.notifications_outlined,
    "routeName": NotificationProfileScreen.routeName,
  },
  {
    "title": "Политика Конфиденциальности",
    "icon": Icons.lock_outline_rounded,
    "routeName": '',
  },
  {
    "title": "Служба Поддержки",
    "icon": Icons.help_center_outlined,
    "routeName": HelpCenterScreen.routeName,
  },
  {
    "title": "Пригласить Друзей",
    "icon": Icons.people_outline,
    "routeName": InviteFriendsScreen.routeName,
  },
];

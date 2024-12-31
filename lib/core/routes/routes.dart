import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:svemble_new/auth/views/Login/login_screen.dart';
import 'package:svemble_new/auth/views/SignIn/signin_screen.dart';
import 'package:svemble_new/auth/views/Signup/signup_screen.dart';
import 'package:svemble_new/screens/AccountSetup/account_setup_screen.dart';
import 'package:svemble_new/screens/Category/category_screen.dart';
import 'package:svemble_new/screens/Checkout/checkout_screen.dart';
import 'package:svemble_new/screens/ChooseShipping/choose_shipping_screen.dart';
import 'package:svemble_new/screens/Comments/comments_screen.dart';
import 'package:svemble_new/screens/DetailProduct/detail_product_screen.dart';
import 'package:svemble_new/screens/EditProfile/edit_profile_screen.dart';
import 'package:svemble_new/screens/Error/error_screen.dart';
import 'package:svemble_new/screens/Favorite/favorite_screen.dart';
import 'package:svemble_new/screens/HelpCenter/help_center_screen.dart';
import 'package:svemble_new/screens/Home/home_screen.dart';
import 'package:svemble_new/screens/InviteFriends/invite_friends_screen.dart';
import 'package:svemble_new/screens/Main/main_screen.dart';
import 'package:svemble_new/screens/Notification/notification_screen.dart';
import 'package:svemble_new/screens/NotificationProfile/notification_profile_screen.dart';
import 'package:svemble_new/screens/Popular/popular_screen.dart';
import 'package:svemble_new/screens/ShippingAddress/shipping_address_screen.dart';
import 'package:svemble_new/screens/SpecialOffer/special_offer_screen.dart';
import 'package:svemble_new/screens/Splash/splash_screen.dart';
import 'package:svemble_new/screens/Welcome/welcome_screen.dart';

import '../../screens/AddressProfile/address_profile_screen.dart';
import '../../screens/SearchHome/search_home_screen.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeSettings) {
    // dynamic arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case SplashScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SplashScreen.routeName),
          child: const SplashScreen(),
          type: PageTransitionType.fade,
        );
      case WelcomeScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: WelcomeScreen.routeName),
          child: const WelcomeScreen(),
          type: PageTransitionType.fade,
        );
      case SignInScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SignInScreen.routeName),
          child: const SignInScreen(),
          type: PageTransitionType.fade,
        );
      case SignUpScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SignUpScreen.routeName),
          child: const SignUpScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case LoginScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: LoginScreen.routeName),
          child: const LoginScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case AccountSetupScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: AccountSetupScreen.routeName),
          child: const AccountSetupScreen(),
          type: PageTransitionType.bottomToTop,
        );
      case MainScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: MainScreen.routeName),
          child: const MainScreen(),
          type: PageTransitionType.fade,
        );
      case HomeScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: HomeScreen.routeName),
          child: const HomeScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case NotificationScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: NotificationScreen.routeName),
          child: const NotificationScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case FavoriteScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: FavoriteScreen.routeName),
          child: const FavoriteScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case PopularScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: PopularScreen.routeName),
          child: const PopularScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case SpecialOfferScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SpecialOfferScreen.routeName),
          child: const SpecialOfferScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case SearchHomeScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SearchHomeScreen.routeName),
          child: const SearchHomeScreen(),
          type: PageTransitionType.fade,
        );
      case CategoryScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: CategoryScreen.routeName),
          child: const CategoryScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case DetailProductScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: DetailProductScreen.routeName),
          child: const DetailProductScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case CommentsScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: CommentsScreen.routeName),
          child: const CommentsScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case CheckoutScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: CheckoutScreen.routeName),
          child: const CheckoutScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case ShippingAddressScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: ShippingAddressScreen.routeName),
          child: const ShippingAddressScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case ChooseShippingScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: ChooseShippingScreen.routeName),
          child: const ChooseShippingScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case EditProfileScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: EditProfileScreen.routeName),
          child: const EditProfileScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case AddressProfileScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: AddressProfileScreen.routeName),
          child: const AddressProfileScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case NotificationProfileScreen.routeName:
        return PageTransition(
          settings:
              const RouteSettings(name: NotificationProfileScreen.routeName),
          child: const NotificationProfileScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case InviteFriendsScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: InviteFriendsScreen.routeName),
          child: const InviteFriendsScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case HelpCenterScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: HelpCenterScreen.routeName),
          child: const HelpCenterScreen(),
          type: PageTransitionType.rightToLeft,
        );
      default:
        return PageTransition(
            settings: const RouteSettings(name: "/error-404"),
            child: const ErrorScreen(),
            type: PageTransitionType.bottomToTop);
    }
  }
}

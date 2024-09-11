import 'package:flutter/material.dart';
import 'package:food_review_app/pages/authentication/user_forget_password.dart';
import 'package:food_review_app/pages/authentication/user_login.dart';
import 'package:food_review_app/pages/authentication/user_register.dart';
import 'package:food_review_app/pages/home.dart';
import 'package:food_review_app/pages/review_entry/review_entry_edit.dart';
import 'package:food_review_app/pages/review_entry/review_entry_photo_zoom.dart';
import 'package:food_review_app/pages/review_entry/review_entry_view.dart';
import 'package:food_review_app/pages/review_grid_photo.dart';
import 'package:food_review_app/pages/review_list/review_list.dart';
import 'package:food_review_app/pages/review_map_locations/review_map_locations.dart';

class Routes {
  static final Map<String, WidgetBuilder> route = {
    Home.route: (BuildContext context) => const Home(),
    UserLogin.route: (BuildContext comtext) => const UserLogin(),
    UserRegister.route: (BuildContext context) => const UserRegister(),
    UserForgotPassword.route: (BuildContext context) =>
        const UserForgotPassword(),
    ReviewList.route: (BuildContext context) => const ReviewList(),
    ReviewEntryView.route: (BuildContext context) => const ReviewEntryView(),
    ReviewEntryEdit.route: (BuildContext context) => const ReviewEntryEdit(),
    ReviewEntryPhotoZoom.route: (BuildContext context) =>
        const ReviewEntryPhotoZoom(),
    ReviewMapLocations.route: (BuildContext context) =>
        const ReviewMapLocations(),
    ReviewGridPhotos.route: (BuildContext context) => const ReviewGridPhotos(),
  };
}

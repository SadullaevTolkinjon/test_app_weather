import 'package:flutter/material.dart';
import 'package:test_/presentation/favorite/favorite_page.dart';
import 'package:test_/presentation/home/home_view.dart';
import 'package:test_/presentation/profile/profile_page.dart';

buildHomeUi(int index) {
  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const FavoritePapge();
    case 2:
      return const ProfilePage();
    default:
      return const SizedBox();
  }
}

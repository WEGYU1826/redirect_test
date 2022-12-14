// ignore_for_file: dead_code

import 'package:africa_qr_redirect/Router/route_constant.dart';
import 'package:africa_qr_redirect/screen/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstant.home,
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: LandingPageScreen(),
          );
        },
      ),

      // GoRoute(
      //   name: RouteConstant.userProfile,
      //   path: '/user/profile/:id',
      //   pageBuilder: (context, state) {
      //     return MaterialPage(
      //       child: UserProfileScreen(
      //         id: state.params['id']!,
      //       ),
      //     );
      //   },
      // ),
      // GoRoute(
      //   name: RouteConstant.userProduct,
      //   path: '/user/product/:id',
      //   pageBuilder: (context, state) {
      //     return MaterialPage(
      //       child: UserProductScreen(
      //         productDetail: state.queryParams,
      //       ),
      //     );
      //   },
      // ),
    ],
    // redirect: (context, state) {
    //   bool isAuth = true;
    //   if (!isAuth && state.subloc == '/') {
    //     return state.namedLocation(RouteConstant.login);
    //   }
    //   return null;
    // },
  );
}

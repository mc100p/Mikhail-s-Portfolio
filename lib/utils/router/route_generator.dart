import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test/components/details_page/details_page.dart';
import 'package:test/components/homepage/homepage.dart';
import 'package:test/components/project_section/project_cards.dart';
import 'package:test/utils/router/route_names.dart';
import 'package:coder_matthews_extensions/coder_matthews_extensions.dart';

class RouteGenerator {
  GoRouter router = GoRouter(
    initialLocation: RouteNames.homepage.toRoute,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: RouteNames.homepage.name,
        path: RouteNames.homepage.toRoute,
        builder: (context, state) => HomePage(),
        pageBuilder: (context, state) {
          return buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: HomePage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.detailPage.name,
        path: RouteNames.detailPage.toRoute,
        pageBuilder: (context, state) {
          final args = state.extra! as ProjectData;
          return buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: DetailsPage(itemList: args),
          );
        },
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(child: ErrorRoute()),
  );
}

class ErrorRoute extends StatelessWidget {
  const ErrorRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error - 400"),
        leading: IconButton(
          icon: IconButton(
            icon:
                Platform.isIOS
                    ? Icon(Icons.arrow_back_ios)
                    : Icon(Icons.arrow_back_outlined),
            onPressed: () => Navigator.pop(context),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Text(
          "Page Not Found....",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder:
        (context, animation, secondaryAnimation, child) =>
            ScaleTransition(scale: animation, child: child),
  );
}

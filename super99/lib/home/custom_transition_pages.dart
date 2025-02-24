import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

Page<T> buildCustomPageSlideBottomToTop<T>({
  required GoRouterState state,
  required Widget child,
}) {
  if (Platform.isIOS) {
    // Use CupertinoPage directly for iOS to retain the back gesture
    return CupertinoPage<T>(
      key: state.pageKey,
      child: child,
    );
  } else {
    // Use CustomTransitionPage for other platforms
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0); // Start from the bottom
        const end = Offset.zero; // End at the original position
        const curve = Curves.easeInOut; // Curve for the animation
        var tween = Tween<Offset>(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}


Page<T> buildCustomPageSlideLeftToRight<T>({
  required GoRouterState state,
  required Widget child,
}) {
  if (Platform.isIOS) {
    // Use CupertinoPage directly for iOS to retain the back gesture
    return CupertinoPage<T>(
      key: state.pageKey,
      child: child,
    );
  } else {
    // Use CustomTransitionPage for other platforms
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0); // Start from the left
        const end = Offset.zero; // End at the original position
        const curve = Curves.easeInOut;

        var tween = Tween<Offset>(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}


Page<T> buildCustomPageSlideTopToBottom<T>({
  required GoRouterState state,
  required Widget child,
}) {
  if (Platform.isIOS) {
    // Use CupertinoPage directly for iOS to retain the back gesture
    return CupertinoPage<T>(
      key: state.pageKey,
      child: child,
    );
  } else {
    // Use CustomTransitionPage for other platforms
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, -1.0); // Start from the top
        const end = Offset.zero; // End at the original position
        const curve = Curves.easeInOut;

        var tween = Tween<Offset>(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}


Page<T> buildCustomPageSlideRightToLeft<T>({
  required GoRouterState state,
  required Widget child,
}) {
  if (Platform.isIOS) {
    // Use CupertinoPage directly for iOS to retain the back gesture
    return CupertinoPage<T>(
      key: state.pageKey,
      child: child,
    );
  } else {
    // Use CustomTransitionPage for other platforms
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeInOut)),
          ),
          child: child,
        );
      },
    );
  }
}

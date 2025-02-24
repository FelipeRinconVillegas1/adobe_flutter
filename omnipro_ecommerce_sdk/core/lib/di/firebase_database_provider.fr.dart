import 'package:core/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_database_provider.fr.g.dart';

@Riverpod(keepAlive: true)
FirebaseDatabase firebaseDatabase(FirebaseDatabaseRef ref) {
  return FirebaseDatabase.instanceFor(
    app: Firebase.app(),
    databaseURL: Constants.firebaseDatabaseUrl,
  );
}

@Riverpod(keepAlive: true)
FirebaseMessaging firebaseMessaging(FirebaseMessagingRef ref) {
  return FirebaseMessaging.instance;
}

# Firebase Setup (brief)
1. Create a Firebase project in console.firebase.google.com.
2. Add Android app, iOS app, and Web app. Follow steps to register app IDs.
3. Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) and place them in respective platform folders.
4. For Web, copy the firebaseConfig snippet and add initialization code in `lib/firebase_options.dart` (or use `flutterfire configure`).
5. Enable Authentication methods (Phone, Google, Email).
6. Create Firestore database (start in test mode for development) and Storage bucket.
7. For push notifications, set up Firebase Cloud Messaging and follow platform-specific steps.

Replace placeholder configs in code and follow FlutterFire docs: https://firebase.flutter.dev/

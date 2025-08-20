# PakBazaar - Flutter Starter (OLX-like)
This is a minimal, ready-to-upload Flutter starter project for **PakBazaar** (OLX-style marketplace).
It supports Web + Android + iOS (responsive) and includes placeholder implementations for:
- Authentication (placeholder)
- Posting Ads (placeholder UI)
- Chat (placeholder)
- Categories & Jewelry tab (placeholder)
- Referral/Coins & Bargain button (logical placeholders)

## What's included
- `lib/main.dart` — app entry with routing & responsive layout
- `lib/screens/*` — placeholder screens (Home, PostAd, Chat, Profile, Login)
- `pubspec.yaml` — minimal dependencies
- `firebase_instructions.md` — how to connect Firebase (Auth, Firestore, Storage, FCM)
- `.gitignore`
- `LICENSE` (MIT)

## How to use
1. Install Flutter SDK (https://flutter.dev/docs/get-started/install).
2. Extract this ZIP.
3. Open the folder in VS Code or Android Studio.
4. Run `flutter pub get`.
5. Replace Firebase placeholders in `firebase_instructions.md` with your Firebase config and follow instructions.
6. For web: `flutter build web` and deploy to Firebase Hosting or Render.

## Notes
This starter provides structure and UI placeholders. For production features like AR try-on, Escrow payments, or CNIC verification, follow the Firebase and plugin integration steps in `firebase_instructions.md`.

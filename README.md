# riverpod_practice

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# freezed
flutter pub add freezed_annotation
flutter pub add --dev build_runner
flutter pub add --dev freezed
# if using freezed to generate fromJson/toJson, also add:
flutter pub add json_annotation
flutter pub add --dev json_serializable

# コードの自動生成
flutter pub run build_runner build
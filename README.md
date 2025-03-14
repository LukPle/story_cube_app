# Story Cube App
<br>
<img src="https://github.com/user-attachments/assets/27b488c4-4f45-44c1-98a5-edba7539588f" alt="story_cube_app_logo" width="450">
<br><br>

## Table of Contents
- [About](#about)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the App](#running-the-app)
<br><br>

## About

**Story Cube App - The companion app for the Tonsor Box**
<br>
Application for Android, iOS and Web developed with Flutter
<br><br>
Connected Repositories:
<br>
https://github.com/Pleanog/story_cube_hardware
<br>
Backend coming soon!
<br><br>

**Timeline**
<br><br>
Recorded memories appear in a timeline view with a details screen that shows a summary and handy metadata about the story, including the original audio to listen to. This preserves memories and eases the management of important information because stories should not get lost.
<br><br>
<img src="https://github.com/user-attachments/assets/1102ca2a-7f71-4bc7-8909-538a55c3c975" alt="timeline_screens" width="340">
<br><br>

**Chronicle**
<br><br>
An overview of a person's memories, categorized by metadata to provide a clearer, more structured overview of their life. There's also an option to create a personal profile for this person to help personalize the experience.
<br><br>
<img src="https://github.com/user-attachments/assets/4cd3aeab-fc82-4d7e-8dec-4c2bfb4eb251" alt="chronicle_screens" width="480">
<br><br>

**Team and Work**
<br><br>
<img src="https://github.com/user-attachments/assets/decd15eb-2bf2-4bbb-985c-be1e64b0ab36" alt="team1" width="260">
<img src="https://github.com/user-attachments/assets/2a0dd360-51f6-4efd-aa7d-498d3435da78" alt="team2" width="260">
<br>
<img src="https://github.com/user-attachments/assets/1ad69c66-1a83-4c34-a4d7-2e562327bfa4" alt="team3" width="320">
<img src="https://github.com/user-attachments/assets/bf8b9933-52ed-44dd-adea-8164a10cb16c" alt="team4" width="320">
<br><br>

## Prerequisites

Before you can start with Flutter, ensure you have the following installed:

1. **Flutter SDK 3.22.3**: Download and install Flutter from the official [Flutter website](https://flutter.dev/docs/get-started/install),
[Download MacOS ARM](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.22.3-stable.zip), [Download Windows x64](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.22.3-stable.zip)
2. **Dart SDK**: This comes bundled with the Flutter SDK.
3. **Android Studio** or **Visual Studio Code**: These are the recommended IDEs for Flutter development.
4. **Android SDK**: Necessary for building and running Android apps.
5. **Xcode**: Required for building and running iOS apps (macOS only).
<br><br>

## Installation

Follow these steps to set up your development environment:

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/LukPle/story_cube_app.git
    cd story_cube_app
    ```

2. **Install Dependencies**:
    Run the following command to fetch the dependencies listed in your `pubspec.yaml` file.
    ```sh
    flutter pub get
    ```

3. **Set Up Your Editor**:
    - **Visual Studio Code**: Install the Flutter and Dart plugins from the extensions marketplace.
    - **Android Studio**: Install the Flutter and Dart plugins from the plugins section.
  
4. **Set Up Firebase Integration**:
    - **Firebase CLI**: Get the Firebase CLI from [Google Firebase](https://firebase.google.com/docs/cli).
    - **Set Up Firebase App-Integration**: Follow the instructions on [Firebase for Flutter Instructions](https://firebase.google.com/docs/flutter/setup?platform=ios).
    - **Authorization**: The setup requires you to be authorized in the Firebase project. You can also connet any another project.
<br><br>

## Running the App

To run the app on an emulator or physical device:

1. **Start an Emulator** (if you don't have a physical device connected):
    - **Android**: Start the Android emulator from Android Studio or use a command line tool.
    - **iOS**: Start the iOS simulator from Xcode (macOS only).

2. **Run the App**:
    ```sh
    flutter run
    ```
<br><br>

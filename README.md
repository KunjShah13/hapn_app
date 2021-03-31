# hapn_app

Our Submission to _Google DSC Solution Challenge 2021_

This app aims to solve *UN Goal-11 Sustainable Cities* challenge(also part of *Goal-10 Reduced Inequalites*).

## Overview

HAPN app functions as a juncture to the citizens, it helps people connect and collaborate on low level problems by sharing those and their solutions through our platform.

## How to Run

You can directly download the apk file through this link:
https://drive.google.com/file/d/1y1v-WT6r3HP4Ke2OLMf9mUlNrna_J0BK/view?usp=sharing
(This is the profile version of the apk build )

Or you can build the apk yourself by following the below steps:
1. Clone the hapn_app repository onto your computer or download the repository as a zip file.
2. Then open the downloaded folder (or unzip if downloaded as a zip file) in either the VSCode or Android Studio with flutter SDK installed beforehand and appropriate flutter extentions.
3. Then open the terminal and Run the command *flutter pub get*.
This will download necessary flutter packages to run the app.
4. Then connect either mobile(with USB Debugging turned on) or start any Android Emulator on the computer.
5. Open the terminal and run the command *flutter run*, this will run the app in debugging mode.

(Optional)6. Run the command *flutter run --profile* in the terminal to build the apk in profile build.

Note: The uploadImage function for creating article is problematic in the release build of the apk(it may run sometimes and sometimes not), therefore profile build is recommended.
Everything runs perfectly in debugging mode of running the app.
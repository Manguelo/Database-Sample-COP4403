# SQL Injection Sample CNT 4403

## About The Project

A sample application to demonstrate an SQL injection exploit.

### Built With

- [Flutter](https://flutter.io)
- [MobX.dart](https://mobx.pub)
- [SQLite](https://pub.dev/packages/sqflite)

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

- Flutter SDK

```
cd ~
git clone https://github.com/flutter/flutter.git -b beta --depth 1
./flutter/bin/flutter --version

# Export the PATH varaible for the flutter cli tool
# open the rc file for your shell (.bashrc, .bash_profile, .zshrc, or similar)
# Add the following line
export PATH=~/flutter/bin:$PATH

# source your rc file or restart your terminal session
source ~/.zshrc

# Verify flutter sdk installed
which flutter
```

- iOS and Android Setup

  - Download latest version of [Xcode][xcode]
  - Download latest version of [Android Studio][android-studio]

- Flutter Doctor
  - This command checks your environment and displays a report to the terminal window.
  - Follow the steps in each section of `flutter doctor` to finish the setup process

```
flutter doctor
```

- VS Code
  - Download latest version of [VS Code][vs-code]
  
## Using the App

Once running you can add users to the local ```User``` database by pressing the swapp button found in the upper left corner and signing up a new user. Pressing the info button in the top right corner shows a list of all entries in the database.

After there is a user in the database, you can attempt to sign in with their credentials. The first dialog shows the SQL query that was used, and the second dialog displays the fetched results.

## Hacking the Database

The SQL injection can be done using the password field of the form. Try some of the following commands:
- ``` ' OR email = 'you_email_here' --```
- ``` '; DELETE FROM User -- ```
- ```' OR 1 = 1 LIMIT 1 -- ```

Have Fun!!!

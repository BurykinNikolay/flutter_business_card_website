#!/bin/sh

flutter packages get --verbose
flutter packages pub run build_runner build --delete-conflicting-outputs --verbose

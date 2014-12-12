# Public: Install Android Studio to /Applications
#
#
# Usage:
#
#     include android::studio
class android::studio($release = '1.0.0', $version = '135.1629389') {

  package { 'Android Studio':
    provider => 'appdmg',
    source   => "http://dl.google.com/android/studio/install/${release}/android-studio-ide-${version}.dmg"
  }
}

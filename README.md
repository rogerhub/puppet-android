# Android Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-android.svg?branch=master)](https://travis-ci.org/boxen/puppet-android)

## Usage

The `sdk` is available:
```puppet
include android::sdk
```

The `ndk` is also available:
```puppet
include android::ndk
```

ensure a `tools` is installed
```puppet
include android::tools
```

ensure a `platform-tools` is installed
```puppet
include android::platform_tools
```

ensure a `build-tools` is installed
```puppet
android::build_tools { '18.1.1': }
```

The `3`, `4`, `7`, `8`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18` , `19` , `20`, and `21` version is also available:
```puppet
include android::19
```

ensure a `version` is installed for a certain android version
```puppet
# install 18 version for default(platform, add_on)
android::version { '17': }

# install 18 version for all
android::version { '18':
  options => ['platform', 'add_on', 'system_image', 'sample']
}
```

ensure a `platform` is installed for a certain android version
```puppet
android::platform { 'android-18': }
```

ensure a `system_image` is installed for a certain android version
```puppet
android::system_image { 'sysimg-18': }
```

ensure a `add_on` is installed for a certain android version
```puppet
android::add_on { 'addon-google_apis-google-18': }
```

ensure a `sample` is installed for a certain android version
```puppet
android::sample { 'sample-18': }
```

ensure a `extra` is installed for a certain android version
```puppet
android::extra { 'extra-google-google_play_services': }
```

ensure a `doc` is installed
```puppet
include android::doc
```

ensure a `studio` is installed
```puppet
include android::studio
```

## Required Puppet Modules

* `boxen`
* `homebrew`
* `stdlib`
* `java`

## Environment

Once installed, you can access the following variables in your environment, projects, etc:

* ANDROID_HOME: android sdk home directory
* ANDROID_NDK_HOME: android ndk home directory

## Development

Set `GITHUB_API_TOKEN` in your shell with a [Github oAuth Token](https://help.github.com/articles/creating-an-oauth-token-for-command-line-use) to raise your API rate limit. You can get some work done without it, but you're less likely to encounter errors like `Unable to find module 'boxen/puppet-boxen' on https://github.com`.

Then write some code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.

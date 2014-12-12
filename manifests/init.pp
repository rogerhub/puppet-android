# Public: Install android into Homebrew
# shell to it.
#
class android {
  include android::config

  file { "${boxen::config::envdir}/android.sh":
    content => template('android/env.sh.erb'),
    require => File[$boxen::config::envdir],
  }

  file { "${boxen::config::envdir}/android.fish":
    content => template('android/env.fish.erb'),
    require => File[$boxen::config::envdir],
  }
}

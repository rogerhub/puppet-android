# Public: Install android version 21
# shell to it.
#
# Examples
#
#   include android::21
class android::21($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '21':
    ensure  => $ensure,
    options => $options,
  }
}

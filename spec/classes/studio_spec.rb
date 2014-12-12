require 'spec_helper'

describe 'android::studio' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  it do
    should contain_package('Android Studio').with({
      :provider => 'appdmg',
      :source   => "http://dl.google.com/android/studio/install/1.0.0/android-studio-ide-135.1629389.dmg"
    })
  end
end

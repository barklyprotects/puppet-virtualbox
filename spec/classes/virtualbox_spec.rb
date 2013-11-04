require 'spec_helper'

describe 'virtualbox' do
  it do
    should contain_package('VirtualBox-4.3.2-90405').with({
      :ensure   => 'installed',
      :source   => 'http://download.virtualbox.org/virtualbox/4.3.2/VirtualBox-4.3.2-90405-OSX.dmg',
      :provider => 'pkgdmg',
      :require  => 'Exec[Kill Virtual Box Processes]',
    })
  end
end

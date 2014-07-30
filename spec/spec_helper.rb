require 'puppetlabs_spec_helper/module_spec_helper'
require 'coveralls'

Coveralls.wear!

fixture_path = File.expand_path(File.join(__FILE__, '..', 'fixtures'))

RSpec.configure do |c|
  
  c.module_path = File.join(fixture_path, 'modules')
  c.manifest_dir = File.join(fixture_path, 'manifests')

  c.mock_with :rspec
  c.treat_symbols_as_metadata_keys_with_true_values = true

  c.before(:each) do
   #Puppet::Util::Log.level = :warning
   #Puppet::Util::Log.newdestination(:console)
  end
end


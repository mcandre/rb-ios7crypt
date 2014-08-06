require 'rubycheck'
require 'ios7crypt'

describe String, '#encrypt' do
  it 'is reversible' do
    prop_reversible = -> s { s.encrypt.decrypt == s }

    RubyCheck.for_all(prop_reversible, [:gen_str]).should == true
  end
end

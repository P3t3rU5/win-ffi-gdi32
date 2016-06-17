require 'rspec'
require_relative '../test/test_helper'
require 'win-ffi/gdi32'

RSpec.describe 'Definitions' do

  files = Dir.glob("#{__dir__}/../lib/**/*.rb").shuffle

  files.each do |f|
      it "should load #{f}" do
        expect { require f }.to_not raise_error
        # expect { mod.module_eval(File.read(f)) }.to_not raise_error
      end
  end

end
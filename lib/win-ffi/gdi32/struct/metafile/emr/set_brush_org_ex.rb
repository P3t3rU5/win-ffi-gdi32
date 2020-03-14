require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    class EMRSETBRUSHORGEX < FFIAdditions::Struct
      attr_accessor :emr, :ptlOrigin

      layout emr:       EMR,
             ptlOrigin: POINTL
    end
  end
end
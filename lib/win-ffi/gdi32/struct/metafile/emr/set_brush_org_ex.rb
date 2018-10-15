require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    class EMRSETBRUSHORGEX < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ptlOrigin; end
      def ptlOrigin=(v) end

      layout emr:       EMR,
             ptlOrigin: POINTL
    end
  end
end
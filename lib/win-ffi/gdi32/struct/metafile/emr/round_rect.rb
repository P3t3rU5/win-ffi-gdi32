require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/sizel'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrroundrect
    class EMRROUNDRECT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBox; end
      def rclBox=(v) end
      def szlCorner; end
      def szlCorner=(v); end

      layout emr:       EMR,
             rclBox:    RECTL,
             szlCorner: SIZEL
    end
  end
end
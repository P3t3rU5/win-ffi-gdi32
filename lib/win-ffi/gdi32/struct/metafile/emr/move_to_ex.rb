require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrlineto
    class EMRMOVETOEX < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ptl; end
      def ptl=(v) end

      layout emr: EMR,
             ptl: POINTL  # Palette handle index, background mode only
    end
  end
end
require_relative 'cie_xyz'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagicexyztriple
    class CIEXYZTRIPLE < FFIAdditions::Struct
      def ciexyzRed; end
      def ciexyzRed=(v) end
      def ciexyzGreen; end
      def ciexyzGreen=(v) end
      def ciexyzBlue; end
      def ciexyzBlue=(v) end

      layout ciexyzRed:   CIEXYZ,
             ciexyzGreen: CIEXYZ,
             ciexyzBlue:  CIEXYZ
    end
  end
end
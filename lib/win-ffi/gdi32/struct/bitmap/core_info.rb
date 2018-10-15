require_relative 'core_header'
require_relative 'rgb_triple'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagbitmapcoreinfo
    class BITMAPCOREINFO < FFIAdditions::Struct
      def bmciHeader; end
      def bmciHeader=(v) end
      def bmciColors; end
      def bmciColors=(v) end

      layout bmciHeader: BITMAPCOREHEADER,
             bmciColors: [RGBTRIPLE, 1]
    end
  end
end
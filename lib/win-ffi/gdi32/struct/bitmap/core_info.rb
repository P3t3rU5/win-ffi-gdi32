require_relative 'core_header'
require_relative 'rgb_triple'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-bitmapcoreinfo
    class BITMAPCOREINFO < FFIAdditions::Struct
      attr_accessor :bmciHeader, :bmciColors

      layout bmciHeader: BITMAPCOREHEADER,
             bmciColors: [RGBTRIPLE, 1]
    end
  end
end
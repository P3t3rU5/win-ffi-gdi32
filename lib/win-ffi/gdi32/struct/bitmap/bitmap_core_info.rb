require 'win-ffi/gdi32/struct/bitmap/bitmap_core_header'
require 'win-ffi/gdi32/struct/bitmap/rgb_triple'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183373(v=vs.85).aspx
    class BITMAPCOREINFO < FFIAdditions::Struct
      layout bmciHeader: BITMAPCOREHEADER,
             bmciColors:    [RGBTRIPLE, 1]
    end
  end
end
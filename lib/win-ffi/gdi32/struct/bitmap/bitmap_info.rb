require 'win-ffi/gdi32/struct/bitmap/bitmap_info_header'
require 'win-ffi/gdi32/struct/bitmap/rgb_quad'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183375(v=vs.85).aspx
    class BITMAPINFO < FFIAdditions::Struct
      layout bmiHeader: BITMAPINFOHEADER,
             bmiColors:          RGBQUAD
    end
  end
end
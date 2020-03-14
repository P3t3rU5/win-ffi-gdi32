require_relative 'info_header'
require_relative 'rgb_quad'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-bitmapinfo
    class BITMAPINFO < FFIAdditions::Struct
      attr_accessor :bmiHeader, :bmiColor

      layout bmiHeader: BITMAPINFOHEADER,
             bmiColors: RGBQUAD
    end
  end
end
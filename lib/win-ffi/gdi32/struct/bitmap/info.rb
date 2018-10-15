require_relative 'info_header'
require_relative 'rgb_quad'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagbitmapinfo
    class BITMAPINFO < FFIAdditions::Struct
      def bmiHeader; end
      def bmiHeader=(v) end
      def bmiColors; end
      def bmiColors=(v) end

      layout bmiHeader: BITMAPINFOHEADER,
             bmiColors: RGBQUAD
    end
  end
end
module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagrgbquad
    class RGBQUAD < FFIAdditions::Struct
      def rgbBlue; end
      def rgbBlue=(v); end
      def rgbGreen; end
      def rgbGreen=(v); end
      def rgbRed; end
      def rgbRed=(v); end
      def rgbReserved; end
      def rgbReserved=(v); end

      layout rgbBlue:     :byte,
             rgbGreen:    :byte,
             rgbRed:      :byte,
             rgbReserved: :byte
    end
  end
end
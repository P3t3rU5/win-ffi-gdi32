module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagbitmapfileheader
    class BITMAPFILEHEADER < FFIAdditions::Struct
      def bfType; end
      def bfType=(v); end
      def bfSize; end
      def bfSize=(v); end
      def bfReserved1; end
      def bfReserved1=(v); end
      def bfReserved2; end
      def bfReserved2=(v); end
      def bfOffBits; end
      def bfOffBits=(v); end

          layout bfType:      :word,
             bfSize:      :dword,
             bfReserved1: :word,
             bfReserved2: :word,
             bfOffBits:   :dword
    end
  end
end
module WinFFI
  module Gdi32
    # Bitmap Header Definition
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagbitmap
    class BITMAP < FFIAdditions::Struct
      def bmType; end
      def bmType=(v) end
      def bmWidth; end
      def bmWidth=(v) end
      def bmHeight; end
      def bmHeight=(v) end
      def bmWidthBytes; end
      def bmWidthBytes=(v) end
      def bmPlanes; end
      def bmPlanes=(v) end
      def bmBitsPixel; end
      def bmBitsPixel=(v) end
      def bmBits; end
      def bmBits=(v) end

      layout bmType:       :long,
             bmWidth:      :long,
             bmHeight:     :long,
             bmWidthBytes: :long,
             bmPlanes:     :word,
             bmBitsPixel:  :word,
             bmBits:       :pointer
    end
  end
end
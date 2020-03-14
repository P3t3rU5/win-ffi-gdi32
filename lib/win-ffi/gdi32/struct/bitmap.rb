module WinFFI
  module Gdi32
    # Bitmap Header Definition
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-bitmap
    class BITMAP < FFIAdditions::Struct
      attr_accessor :bmType,
                    :bmWidth,
                    :bmHeight,
                    :bmWidthBytes,
                    :bmPlanes,
                    :bmBitsPixel,
                    :bmBits

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
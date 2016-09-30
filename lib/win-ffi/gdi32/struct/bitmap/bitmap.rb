require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Bitmap Header Definition
    # https://msdn.microsoft.com/en-us/library/dd183371(v=vs.85).aspx
    class BITMAP < FFIAdditions::Struct
      layout bmType:       :long,
             bmWidth:      :long,
             bmHeight:     :long,
             bmWidthBytes: :long,
             bmPlanes:     :word,
             bmBitsPixel:  :word,
             bmBits:    :pointer
    end
  end
end
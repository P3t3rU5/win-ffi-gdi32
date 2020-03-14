module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-bitmapfileheader
    class BITMAPFILEHEADER < FFIAdditions::Struct
      attr_accessor :bfType,
                    :bfSize,
                    :bfReserved1,
                    :bfReserved2,
                    :bfOffBits

          layout bfType:  :word,
             bfSize:      :dword,
             bfReserved1: :word,
             bfReserved2: :word,
             bfOffBits:   :dword
    end
  end
end
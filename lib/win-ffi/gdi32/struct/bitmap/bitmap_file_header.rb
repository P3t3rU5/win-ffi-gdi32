require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183374(v=vs.85).aspx
    class BITMAPFILEHEADER < FFIAdditions::Struct
      layout bfType:      :word,
             bfSize:     :dword,
             bfReserved1: :word,
             bfReserved2: :word,
             bfOffBits:  :dword
    end
  end
end
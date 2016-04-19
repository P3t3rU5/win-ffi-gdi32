require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class RGBQUAD < FFIStruct
      layout :rgbBlue,     :byte,
             :rgbGreen,    :byte,
             :rgbRed,      :byte,
             :rgbReserved, :byte
    end
  end
end
require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162938%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    class RGBQUAD < FFIAdditions::Struct
      layout rgbBlue:     :byte,
             rgbGreen:    :byte,
             rgbRed:      :byte,
             rgbReserved: :byte
    end
  end
end
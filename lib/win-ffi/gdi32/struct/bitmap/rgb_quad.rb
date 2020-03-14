module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-rgbquad
    class RGBQUAD < FFIAdditions::Struct
      attr_accessor :rgbBlue,
                    :rgbGreen,
                    :rgbRed,
                    :rgbReserved

      layout rgbBlue:     :byte,
             rgbGreen:    :byte,
             rgbRed:      :byte,
             rgbReserved: :byte
    end
  end
end
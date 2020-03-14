module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-rgbtriple
    class RGBTRIPLE < FFIAdditions::Struct
      attr_accessor :rgbtBlue, :rgbtGreen, :rgbtRed

      layout rgbtBlue:  :byte,
             rgbtGreen: :byte,
             rgbtRed:   :byte
    end
  end
end
require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162939(v=vs.85).aspx
    class RGBTRIPLE < FFIAdditions::Struct
      layout rgbtBlue:  :byte,
             rgbtGreen: :byte,
             rgbtRed:   :byte
    end
  end
end
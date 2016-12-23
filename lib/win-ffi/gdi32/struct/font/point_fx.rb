require 'win-ffi/gdi32/struct/font/fixed'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162806(v=vs.85).aspx
    class POINTFX< FFIAdditions::Struct
      layout x: FIXED,
             y: FIXED
    end
  end
end
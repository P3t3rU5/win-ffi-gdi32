require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class WCRUN < FFIAdditions::Struct
      layout wcLow:    :wchar,
             cGlyphs: :ushort,
             phg:    :pointer
    end
  end
end
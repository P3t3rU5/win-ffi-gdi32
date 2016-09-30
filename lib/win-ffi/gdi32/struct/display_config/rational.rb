require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class DISPLAYCONFIG_RATIONAL < FFIAdditions::Struct
      layout Numerator:   :uint32,
             Denominator: :uint32
    end
  end
end
require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd145228(v=vs.85).aspx
    class XFORM < FFIAdditions::Struct
      layout eM11: :float,
             eM12: :float,
             eM21: :float,
             eM22: :float,
             eDx:  :float,
             eDy:  :float
    end
  end
end
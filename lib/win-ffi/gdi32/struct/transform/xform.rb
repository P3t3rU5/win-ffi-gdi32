module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-xform
    class XFORM < FFIAdditions::Struct
      attr_accessor :eM11, :eM12, :eM21, :eM22, :eDx, :eDy

      layout eM11: :float,
             eM12: :float,
             eM21: :float,
             eM22: :float,
             eDx:  :float,
             eDy:  :float
    end
  end
end
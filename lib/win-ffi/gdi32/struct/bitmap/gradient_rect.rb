module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-gradient_rect
    class GRADIENT_RECT < FFIAdditions::Struct
      attr_accessor :UpperLeft, :LowerRight

      layout UpperLeft:  :ulong,
             LowerRight: :ulong
    end
  end
end
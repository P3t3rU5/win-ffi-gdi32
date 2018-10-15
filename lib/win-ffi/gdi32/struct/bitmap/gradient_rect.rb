module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_gradient_rect
    class GRADIENT_RECT < FFIAdditions::Struct
      layout UpperLeft:  :ulong,
             LowerRight: :ulong
    end
  end
end
module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-pointfloat
    class POINTFLOAT < FFIAdditions::Struct
      attr_accessor :x, :y

      layout x: :float,
             y: :float
    end
  end
end
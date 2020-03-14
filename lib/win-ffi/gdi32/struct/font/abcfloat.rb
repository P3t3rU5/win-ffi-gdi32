module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-abcfloat
    class ABCFLOAT < FFIAdditions::Struct
      attr_accessor :abcfA, :abcfB, :abcfC

      layout abcfA: :float,
             abcfB: :float,
             abcfC: :int
    end
  end
end


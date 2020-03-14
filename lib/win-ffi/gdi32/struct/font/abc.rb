module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-abc
    class ABC < FFIAdditions::Struct
      attr_accessor :abcA, :abcB, :abcC

      layout abcA: :int,
             abcB: :uint,
             abcC: :int
    end
  end
end
module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-kerningpair
    class KERNINGPAIR < FFIAdditions::Struct
      attr_accessor :wFirst, :wSecond, :iKernAmount

      layout wFirst:      :word,
             wSecond:     :word,
             iKernAmount: :int
    end
  end
end
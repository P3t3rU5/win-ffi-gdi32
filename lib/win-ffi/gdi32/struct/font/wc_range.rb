module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-wcrange
    class WCRANGE < FFIAdditions::Struct
      attr_accessor :wcLow, :cGlyphs

      layout wcLow:   :char,
             cGlyphs: :ushort
    end
  end
end
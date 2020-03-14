module WinFFI
  module Gdi32
    typedef :ushort, :color16
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-trivertex
    class TRIVERTEX < FFIAdditions::Struct
      attr_accessor :x, :y, :Red, :Green, :Blue, :Alpha

      layout x:     :long,
             y:     :long,
             Red:   :color16,
             Green: :color16,
             Blue:  :color16,
             Alpha: :color16
    end
  end
end
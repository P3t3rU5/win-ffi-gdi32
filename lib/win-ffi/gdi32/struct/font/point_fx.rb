require_relative 'fixed'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-pointfx
    class POINTFX < FFIAdditions::Struct
      attr_accessor :x, :y

      layout x: FIXED,
             y: FIXED
    end
  end
end
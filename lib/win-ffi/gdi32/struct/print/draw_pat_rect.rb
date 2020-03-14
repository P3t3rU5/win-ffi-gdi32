require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-drawpatrect
    class DRAWPATRECT < FFIAdditions::Struct
      attr_accessor :ptPosition, :ptSize, :wStyle, :wPattern

      layout ptPosition: POINT,
             ptSize:     POINT,
             wStyle:     :word,
             wPattern:   :word
    end
  end
end
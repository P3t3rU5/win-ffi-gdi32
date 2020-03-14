require 'win-ffi/core/struct/point'

require_relative '../../enum/pen/style'

module WinFFI
  module Gdi32
    # Logical Pen
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-logpen
    class LOGPEN < FFIAdditions::Struct
      attr_reader :lopnStyle, :lopnWidth, :lopnColor

      layout lopnStyle: PenStyle,
             lopnWidth: POINT,
             lopnColor: :colorref
    end
  end
end
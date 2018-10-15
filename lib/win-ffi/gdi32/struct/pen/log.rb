require 'win-ffi/core/struct/point'

require_relative '../../enum/pen/style'

module WinFFI
  module Gdi32
    # Logical Pen
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-taglogpen
    class LOGPEN < FFIAdditions::Struct
      def lopnStyle; end
      def lopnStyle=(v) end
      def lopnWidth; end
      def lopnWidth=(v); end
      def lopnColor; end
      def lopnColor=(v); end

      layout lopnStyle: PenStyle,
             lopnWidth: POINT,
             lopnColor: :colorref
    end
  end
end
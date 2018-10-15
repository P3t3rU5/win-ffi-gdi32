require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetpixelv
    class EMRSETPIXELV < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ptlPixel; end
      def ptlPixel=(v) end
      def crColor; end
      def crColor=(v) end

      layout emr:      EMR,
             ptlPixel: POINTL,
             crColor: :colorref
    end
  end
end
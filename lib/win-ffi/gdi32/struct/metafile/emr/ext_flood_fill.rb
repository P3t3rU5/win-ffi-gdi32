require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrextfloodfill
    class EMREXTFLOODFILL < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ptlStart; end
      def ptlStart=(v) end
      def crColor; end
      def crColor=(v) end
      def iMode; end
      def iMode=(v) end

      layout emr:      EMR,
             ptlStart: POINTL,
             crColor: :colorref,
             iMode:   :dword
    end
  end
end
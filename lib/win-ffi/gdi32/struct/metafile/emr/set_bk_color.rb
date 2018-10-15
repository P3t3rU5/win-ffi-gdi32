require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsettextcolor
    class EMRSETBKCOLOR < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def crColor; end
      def crColor=(v) end

      layout emr:     EMR,
             crColor: :colorref
    end

    class EMRSETTEXTCOLOR < EMRSETBKCOLOR; end
  end
end
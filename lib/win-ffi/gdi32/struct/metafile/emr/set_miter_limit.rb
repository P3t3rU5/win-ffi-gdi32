require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetmiterlimit
    class EMRSETMITERLIMIT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def eMiterLimit; end
      def eMiterLimit=(v) end

      layout emr:         EMR,
             eMiterLimit: :float
    end
  end
end
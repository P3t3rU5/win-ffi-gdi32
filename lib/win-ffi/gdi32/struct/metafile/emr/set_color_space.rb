require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetcolorspace
    class EMRSETCOLORSPACE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihCS; end
      def ihCS=(v) end

      layout emr:  EMR,
             ihCS: :dword
    end

    class EMRSELECTCOLORSPACE < EMRSETCOLORSPACE; end
    class EMRDELETECOLORSPACE < EMRSETCOLORSPACE; end
  end
end
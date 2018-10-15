require_relative '../emr'
require_relative '../../../struct/pen/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrcreatepen
    class EMRCREATEPEN < FFIAdditions::Struct
      def emr; end
      def emr=(v); end
      def ihPen; end
      def ihPen=(v); end
      def lopn; end
      def lopn=(v); end

      layout emr:   EMR,
             ihPen: :dword,
             lopn:  LOGPEN
    end
  end
end
require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrmodifyworldtransform
    class EMRMODIFYWORLDTRANSFORM < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def xform; end
      def xform=(v) end
      def iMode; end
      def iMode=(v) end

      layout emr:   EMR,
             xform: XFORM,
             iMode: :dword
    end
  end
end
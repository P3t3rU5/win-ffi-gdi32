require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetworldtransform
    class EMRSETWORLDTRANSFORM < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def xform; end
      def xform=(v) end

      layout emr:   EMR,
             xform: XFORM
    end
  end
end
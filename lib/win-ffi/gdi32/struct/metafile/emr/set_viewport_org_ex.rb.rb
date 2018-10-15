require 'win-ffi/core/struct/sizel'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetviewportextex
    class EMRSETVIEWPORTORGEX < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ptlOrigin; end
      def ptlOrigin=(v) end

      layout emr:       EMR,
             ptlOrigin: POINTL
    end

    EMRSETWINDOWORGEX = EMRSETVIEWPORTORGEX
    EMRSETBRUSHORGEX  = EMRSETVIEWPORTORGEX
  end
end
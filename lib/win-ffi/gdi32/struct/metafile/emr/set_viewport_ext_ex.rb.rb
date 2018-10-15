require 'win-ffi/core/struct/sizel'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetviewportextex
    class EMRSETVIEWPORTEXTEX < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def szlExtent; end
      def szlExtent=(v) end

      layout emr:       EMR,
             szlExtent: SIZEL
    end

    class EMRSETWINDOWEXTEX < EMRSETVIEWPORTEXTEX; end
  end
end
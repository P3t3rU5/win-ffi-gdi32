require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetmapperflags
    class EMRSETMAPPERFLAGS < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def dwFlags; end
      def dwFlags=(v) end

      layout emr:     EMR,
             dwFlags: :dword
    end
  end
end
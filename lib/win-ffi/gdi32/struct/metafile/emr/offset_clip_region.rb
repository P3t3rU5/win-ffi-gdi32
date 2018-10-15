require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemroffsetcliprgn
    class EMROFFSETCLIPRGN < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ptlOffset; end
      def ptlOffset=(v) end

      layout emr:       EMR,
             ptlOffset: POINTL
    end
  end
end
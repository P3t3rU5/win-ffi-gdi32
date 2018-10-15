require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrrestoredc
    class EMRRESTOREDC < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def iRelative; end
      def iRelative=(v) end

      layout emr:       EMR,
             iRelative: :long  # Specifies a relative instance
    end
  end
end
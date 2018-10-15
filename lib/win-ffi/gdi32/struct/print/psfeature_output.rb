module WinFFI
  module Gdi32
    # Information about output options
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_psfeature_output
    class PSFEATURE_OUTPUT < FFIAdditions::Struct
      def bPageIndependent; end
      def bPageIndependent=(v); end
      def bSetPageDevice; end
      def bSetPageDevice=(v); end

      layout bPageIndependent: :bool,
             bSetPageDevice:   :bool
    end
  end
end
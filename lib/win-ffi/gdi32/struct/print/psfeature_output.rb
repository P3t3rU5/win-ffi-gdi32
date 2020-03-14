module WinFFI
  module Gdi32
    # Information about output options
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-psfeature_output
    class PSFEATURE_OUTPUT < FFIAdditions::Struct
      attr_accessor :bPageIndependent, :bSetPageDevice

      layout bPageIndependent: :bool,
             bSetPageDevice:   :bool
    end
  end
end
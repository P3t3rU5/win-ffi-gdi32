require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Information about output options
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162876(v=vs.85).aspx
    class PSFEATURE_OUTPUT < FFIAdditions::Struct
      layout bPageIndependent: :bool,
             bSetPageDevice:   :bool
    end
  end
end
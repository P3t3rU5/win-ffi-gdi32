require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class EMRRESTOREDC < FFIAdditions::Struct
      layout emr:         EMR,
             iRelative: :long  # Specifies a relative instance
    end
  end
end
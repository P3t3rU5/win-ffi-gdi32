require 'win-ffi/gdi32/struct/metafile/emr'

module WinFFI
  module Gdi32
    class EMRSETARCDIRECTION < FFIAdditions::Struct
      layout emr:              EMR,
             iArcDirection: :dword  # Specifies the arc direction in the advanced graphics mode.
    end
  end
end
require 'win-ffi/gdi32/struct/metafile/emr'

module WinFFI
  module Gdi32
    class EMRSETMITERLIMIT < FFIAdditions::Struct
      layout emr:            EMR,
             eMiterLimit: :float
    end
  end
end
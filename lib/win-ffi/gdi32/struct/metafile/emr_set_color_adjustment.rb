require 'win-ffi/gdi32/struct/metafile/emr'
require 'win-ffi/gdi32/struct/bitmap/color_adjustment'

module WinFFI
  module Gdi32
    class EMRSETCOLORADJUSTMENT < FFIAdditions::Struct
      layout emr:                         EMR,
             ColorAdjustment: COLORADJUSTMENT
    end
  end
end
require 'win-ffi/gdi32/struct/font/axes_list'
require 'win-ffi/gdi32/struct/font/new_text_metric_extended'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162695(v=vs.85).aspx
    class ENUMTEXTMETRIC < FFIAdditions::Struct
      layout etmNewTextMetricEx: NEWTEXTMETRICEX,
             etmAxesList:               AXESLIST
    end
  end
end
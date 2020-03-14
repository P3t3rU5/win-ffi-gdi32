require_relative 'axes_list'
require_relative 'new_text_metric_extended'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enumtextmetrica
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enumtextmetricw
    class ENUMTEXTMETRIC < FFIAdditions::Struct
      attr_accessor :etmNewTextMetricEx, :etmAxesList

      layout etmNewTextMetricEx: NEWTEXTMETRICEX,
             etmAxesList:        AXESLIST
    end
  end
end
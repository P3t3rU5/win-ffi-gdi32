require_relative 'axes_list'
require_relative 'new_text_metric_extended'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162695(v=vs.85).aspx
    class ENUMTEXTMETRIC < FFIAdditions::Struct
      def etmNewTextMetricEx; end
      def etmNewTextMetricEx=(v); end
      def etmAxesList; end
      def etmAxesList=(v); end

      layout etmNewTextMetricEx: NEWTEXTMETRICEX,
             etmAxesList:        AXESLIST
    end
  end
end
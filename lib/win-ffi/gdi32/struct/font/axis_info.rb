require 'win-ffi/gdi32/constant'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagaxisinfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagaxisinfow
    class AXISINFO < FFIAdditions::Struct
      def axMinValue; end
      def axMinValue=(v) end
      def axMaxValue; end
      def axMaxValue=(v) end
      def axAxisName; end
      def axAxisName=(v) end

      layout axMinValue: :long,
             axMaxValue: :long,
             axAxisName: WideInlineString.new(MM_MAX_NUMAXES)
    end
  end
end
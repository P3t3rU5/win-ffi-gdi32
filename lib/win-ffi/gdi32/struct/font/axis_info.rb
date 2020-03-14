require_relative '../../constant'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-axisinfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-axisinfoa
    class AXISINFO < FFIAdditions::Struct
      attr_accessor :axMinValue, :axMaxValue, :axAxisName

      layout axMinValue: :long,
             axMaxValue: :long,
             axAxisName: WideInlineString.new(MM_MAX_NUMAXES)
    end
  end
end
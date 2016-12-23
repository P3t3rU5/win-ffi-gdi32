require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183361(v=vs.85).aspx
    class AXISINFO < FFIAdditions::Struct
      layout axMinValue:                               :long,
             axMaxValue:                               :long,
             axAxisName: WideInlineString.new(MM_MAX_NUMAXES)
    end
  end
end
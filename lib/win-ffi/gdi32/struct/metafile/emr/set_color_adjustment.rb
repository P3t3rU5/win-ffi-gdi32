require_relative '../emr'
require_relative '../../bitmap/color_adjustment'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetcoloradjustment
    class EMRSETCOLORADJUSTMENT < FFIAdditions::Struct
      attr_accessor :emr, :ColorAdjustment

      layout emr:             EMR,
             ColorAdjustment: COLORADJUSTMENT
    end
  end
end
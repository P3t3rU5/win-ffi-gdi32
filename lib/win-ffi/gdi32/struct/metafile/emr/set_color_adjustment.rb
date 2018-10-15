require_relative '../emr'
require_relative '../../bitmap/color_adjustment'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetcoloradjustment
    class EMRSETCOLORADJUSTMENT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ColorAdjustment; end
      def ColorAdjustment=(v) end
      layout emr:             EMR,
             ColorAdjustment: COLORADJUSTMENT
    end
  end
end
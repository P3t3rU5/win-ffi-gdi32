require_relative '../../enum/font/pan_family'
require_relative '../../enum/font/pan_serif_style'
require_relative '../../enum/font/pan_weight'
require_relative '../../enum/font/pan_proportion'
require_relative '../../enum/font/pan_contrast'
require_relative '../../enum/font/pan_stroke_variation'
require_relative '../../enum/font/pan_arm_style'
require_relative '../../enum/font/pan_letter_form'
require_relative '../../enum/font/pan_midline'
require_relative '../../enum/font/pan_x_height'


module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagpanose
    class PANOSE < FFIAdditions::Struct
      def FamilyType; end
      def FamilyType=(v) end
      def SerifStyle; end
      def SerifStyle=(v) end
      def Weight; end
      def Weight=(v) end
      def Proportion; end
      def Proportion=(v) end
      def Contrast; end
      def Contrast=(v) end
      def StrokeVariation; end
      def StrokeVariation=(v) end
      def ArmStyle; end
      def ArmStyle=(v) end
      def Letterform; end
      def Letterform=(v) end
      def Midline; end
      def Midline=(v) end
      def XHeight; end
      def XHeight=(v) end

      layout FamilyType:      PanFamily,
             SerifStyle:      PanSerifStyle,
             Weight:          PanWeight,
             Proportion:      PanProportion,
             Contrast:        PanContrast,
             StrokeVariation: PanStrokeVariation,
             ArmStyle:        PanArmStyle,
             Letterform:      PanLetterForm,
             Midline:         PanMidline,
             XHeight:         PanXHeight
    end
  end
end
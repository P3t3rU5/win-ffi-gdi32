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
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-panose
    class PANOSE < FFIAdditions::Struct
      attr_accessor :FamilyType,
                    :SerifStyle,
                    :Weight,
                    :Proportion,
                    :Contrast,
                    :StrokeVariation,
                    :ArmStyle,
                    :Letterform,
                    :Midline,
                    :XHeight

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
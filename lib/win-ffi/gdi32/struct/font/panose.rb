require 'win-ffi/gdi32/enum/font/pan_family'
require 'win-ffi/gdi32/enum/font/pan_serif_style'
require 'win-ffi/gdi32/enum/font/pan_weight'
require 'win-ffi/gdi32/enum/font/pan_proportion'
require 'win-ffi/gdi32/enum/font/pan_contrast'
require 'win-ffi/gdi32/enum/font/pan_stroke_variation'
require 'win-ffi/gdi32/enum/font/pan_arm_style'
require 'win-ffi/gdi32/enum/font/pan_letter_form'
require 'win-ffi/gdi32/enum/font/pan_midline'
require 'win-ffi/gdi32/enum/font/pan_x_height'


module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162774(v=vs.85).aspx
    class PANOSE < FFIAdditions::Struct
      layout FamilyType:               PanFamily,
             SerifStyle:           PanSerifStyle,
             Weight:                   PanWeight,
             Proportion:           PanProportion,
             Contrast:               PanContrast,
             StrokeVariation: PanStrokeVariation,
             ArmStyle:               PanArmStyle,
             Letterform:           PanLetterForm,
             Midline:                 PanMidline,
             XHeight:                 PanXHeight
    end
  end
end
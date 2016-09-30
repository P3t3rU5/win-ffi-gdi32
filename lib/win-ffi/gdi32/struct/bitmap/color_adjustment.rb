require 'win-ffi/gdi32/enum/bitmap/color_adjustment_flag'
require 'win-ffi/gdi32/enum/bitmap/illuminant_index_value'

module WinFFI
  module Gdi32
    class COLORADJUSTMENT < FFIAdditions::Struct
      layout caSize:                           :word,
             caFlags:            ColorAdjustmentFlag,
             caIlluminantIndex: IlluminantIndexValue,
             caRedGamma:                       :word,
             caGreenGamma:                     :word,
             caBlueGamma:                      :word,
             caReferenceBlack:                 :word,
             caReferenceWhite:                 :word,
             caContrast:                      :short,
             caBrightness:                    :short,
             caColorfulness:                  :short,
             caRedGreenTint:                  :short

      def initialize
        super
        self[:caSize] = self.size
      end
    end
  end
end
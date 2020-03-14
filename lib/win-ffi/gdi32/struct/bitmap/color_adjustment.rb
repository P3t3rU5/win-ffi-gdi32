require_relative '../../enum/bitmap/color_adjustment_flag'
require_relative '../../enum/bitmap/illuminant_index_value'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-coloradjustment
    class COLORADJUSTMENT < FFIAdditions::Struct
      attr_accessor :caSize,
                    :caFlags,
                    :caIlluminantIndex,
                    :caRedGamma,
                    :caGreenGamma,
                    :caBlueGamma,
                    :caReferenceBlack,
                    :caReferenceWhite,
                    :caContrast,
                    :caBrightness,
                    :caColorfulness,
                    :caRedGreenTint

      layout caSize:            :word,
             caFlags:           ColorAdjustmentFlag,
             caIlluminantIndex: IlluminantIndexValue,
             caRedGamma:        :word,
             caGreenGamma:      :word,
             caBlueGamma:       :word,
             caReferenceBlack:  :word,
             caReferenceWhite:  :word,
             caContrast:        :short,
             caBrightness:      :short,
             caColorfulness:    :short,
             caRedGreenTint:    :short

      def initialize
        super
        self.caSize = self.size
      end

      private :caSize, :caSize=
    end
  end
end
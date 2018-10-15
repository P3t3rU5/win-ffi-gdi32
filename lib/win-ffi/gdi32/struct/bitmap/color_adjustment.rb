require_relative '../../enum/bitmap/color_adjustment_flag'
require_relative '../../enum/bitmap/illuminant_index_value'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagcoloradjustment
    class COLORADJUSTMENT < FFIAdditions::Struct
      def caSize; end
      def caSize=(v); end
      def caFlags; end
      def caFlags=(v); end
      def caIlluminantIndex; end
      def caIlluminantIndex=(v); end
      def caRedGamma; end
      def caRedGamma=(v); end
      def caGreenGamma; end
      def caGreenGamma=(v); end
      def caBlueGamma; end
      def caBlueGamma=(v); end
      def caReferenceBlack; end
      def caReferenceBlack=(v); end
      def caReferenceWhite; end
      def caReferenceWhite=(v); end
      def caContrast; end
      def caContrast=(v); end
      def caBrightness; end
      def caBrightness=(v); end
      def caColorfulness; end
      def caColorfulness=(v); end
      def caRedGreenTint; end
      def caRedGreenTint=(v); end

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
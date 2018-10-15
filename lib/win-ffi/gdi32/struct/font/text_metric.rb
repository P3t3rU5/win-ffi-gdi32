require_relative '../../enum/font/text_metric_pitch_and_family_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagtextmetrica
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagtextmetricw
    class TEXTMETRIC < FFIAdditions::Struct
      def tmHeight; end
      def tmHeight=(v); end
      def tmAscent; end
      def tmAscent=(v); end
      def tmDescent; end
      def tmDescent=(v); end
      def tmInternalLeading; end
      def tmInternalLeading=(v); end
      def tmExternalLeading; end
      def tmExternalLeading=(v); end
      def tmAveCharWidth; end
      def tmAveCharWidth=(v); end
      def tmMaxCharWidth; end
      def tmMaxCharWidth=(v); end
      def tmWeight; end
      def tmWeight=(v); end
      def tmOverhang; end
      def tmOverhang=(v); end
      def tmDigitizedAspectX; end
      def tmDigitizedAspectX=(v); end
      def tmDigitizedAspectY; end
      def tmDigitizedAspectY=(v); end
      def tmFirstChar; end
      def tmFirstChar=(v); end
      def tmLastChar; end
      def tmLastChar=(v); end
      def tmDefaultChar; end
      def tmDefaultChar=(v); end
      def tmBreakChar; end
      def tmBreakChar=(v); end
      def tmItalic; end
      def tmItalic=(v); end
      def tmUnderlined; end
      def tmUnderlined=(v); end
      def tmStruckOut; end
      def tmStruckOut=(v); end
      def tmPitchAndFamily; end
      def tmPitchAndFamily=(v); end
      def tmCharSet; end
      def tmCharSet=(v); end

      layout tmHeight:           :long,
             tmAscent:           :long,
             tmDescent:          :long,
             tmInternalLeading:  :long,
             tmExternalLeading:  :long,
             tmAveCharWidth:     :long,
             tmMaxCharWidth:     :long,
             tmWeight:           :long,
             tmOverhang:         :long,
             tmDigitizedAspectX: :long,
             tmDigitizedAspectY: :long,
             tmFirstChar:        :char,
             tmLastChar:         :char,
             tmDefaultChar:      :char,
             tmBreakChar:        :char,
             tmItalic:           :byte,
             tmUnderlined:       :byte,
             tmStruckOut:        :byte,
             tmPitchAndFamily:   TextMetricPitchAndFamilyFlag,
             tmCharSet:          :byte
    end
  end
end
require_relative '../../enum/font/new_text_metric_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagnewtextmetrica
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagnewtextmetricw
    class NEWTEXTMETRIC < FFIAdditions::Struct
      def tmHeight; end
      def tmHeight=(v) end
      def tmAscent; end
      def tmAscent=(v) end
      def tmDescent; end
      def tmDescent=(v) end
      def tmInternalLeading; end
      def tmInternalLeading=(v) end
      def tmExternalLeading; end
      def tmExternalLeading=(v) end
      def tmAveCharWidth; end
      def tmAveCharWidth=(v) end
      def tmMaxCharWidth; end
      def tmMaxCharWidth=(v) end
      def tmWeight; end
      def tmWeight=(v) end
      def tmOverhang; end
      def tmOverhang=(v) end
      def tmDigitizedAspectX; end
      def tmDigitizedAspectX=(v) end
      def tmDigitizedAspectY; end
      def tmDigitizedAspectY=(v) end
      def tmFirstChar; end
      def tmFirstChar=(v) end
      def tmLastChar; end
      def tmLastChar=(v) end
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
      def ntmFlags; end
      def ntmFlags=(v); end
      def ntmSizeEM; end
      def ntmSizeEM=(v); end
      def ntmCellHeight; end
      def ntmCellHeight=(v); end
      def ntmAvgWidth; end
      def ntmAvgWidth=(v); end

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
             tmFirstChar:        :tchar,
             tmLastChar:         :tchar,
             tmDefaultChar:      :tchar,
             tmBreakChar:        :tchar,
             tmItalic:           :byte,
             tmUnderlined:       :byte,
             tmStruckOut:        :byte,
             tmPitchAndFamily:   :byte,
             tmCharSet:          :byte,
             ntmFlags:           NewTextMetricFlag,
             ntmSizeEM:          :uint,
             ntmCellHeight:      :uint,
             ntmAvgWidth:        :uint
    end
  end
end
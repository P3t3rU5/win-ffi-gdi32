require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/rect'

require_relative 'text_metric'
require_relative 'panose'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_outlinetextmetrica
    class OUTLINETEXTMETRIC < FFIAdditions::Struct
      def otmSize; end
      def otmSize=(v); end
      def otmTextMetrics; end
      def otmTextMetrics=(v); end
      def otmFiller; end
      def otmFiller=(v); end
      def otmPanoseNumber; end
      def otmPanoseNumber=(v); end
      def otmfsSelection; end
      def otmfsSelection=(v); end
      def otmfsType; end
      def otmfsType=(v); end
      def otmsCharSlopeRise; end
      def otmsCharSlopeRise=(v); end
      def otmsCharSlopeRun; end
      def otmsCharSlopeRun=(v); end
      def otmItalicAngle; end
      def otmItalicAngle=(v); end
      def otmEMSquare; end
      def otmEMSquare=(v); end
      def otmAscent; end
      def otmAscent=(v); end
      def otmDescent; end
      def otmDescent=(v); end
      def otmLineGap; end
      def otmLineGap=(v); end
      def otmsCapEmHeight; end
      def otmsCapEmHeight=(v); end
      def otmsXHeight; end
      def otmsXHeight=(v); end
      def otmrcFontBox; end
      def otmrcFontBox=(v); end
      def otmMacAscent; end
      def otmMacAscent=(v); end
      def otmMacDescent; end
      def otmMacDescent=(v); end
      def otmMacLineGap; end
      def otmMacLineGap=(v); end
      def otmusMinimumPPEM; end
      def otmusMinimumPPEM=(v); end
      def otmptSubscriptSize; end
      def otmptSubscriptSize=(v); end
      def otmptSubscriptOffset; end
      def otmptSubscriptOffset=(v); end
      def otmptSuperscriptSize; end
      def otmptSuperscriptSize=(v); end
      def otmptSuperscriptOffset; end
      def otmptSuperscriptOffset=(v); end
      def otmsStrikeoutSize; end
      def otmsStrikeoutSize=(v); end
      def otmsStrikeoutPosition; end
      def otmsStrikeoutPosition=(v); end
      def otmsUnderscoreSize; end
      def otmsUnderscoreSize=(v); end
      def otmsUnderscorePosition; end
      def otmsUnderscorePosition=(v); end
      def otmpFamilyName; end
      def otmpFamilyName=(v); end
      def otmpFaceName; end
      def otmpFaceName=(v); end
      def otmpStyleName; end
      def otmpStyleName=(v); end
      def otmpFullName; end
      def otmpFullName=(v); end

      layout otmSize:                :uint,
             otmTextMetrics:         TEXTMETRIC,
             otmFiller:              :byte,
             otmPanoseNumber:        PANOSE,
             otmfsSelection:         :uint,
             otmfsType:              :uint,
             otmsCharSlopeRise:      :int,
             otmsCharSlopeRun:       :int,
             otmItalicAngle:         :int,
             otmEMSquare:            :uint,
             otmAscent:              :int,
             otmDescent:             :int,
             otmLineGap:             :uint,
             otmsCapEmHeight:        :uint,
             otmsXHeight:            :uint,
             otmrcFontBox:           RECT,
             otmMacAscent:           :int,
             otmMacDescent:          :int,
             otmMacLineGap:          :uint,
             otmusMinimumPPEM:       :uint,
             otmptSubscriptSize:     POINT,
             otmptSubscriptOffset:   POINT,
             otmptSuperscriptSize:   POINT,
             otmptSuperscriptOffset: POINT,
             otmsStrikeoutSize:      :uint,
             otmsStrikeoutPosition:  :int,
             otmsUnderscoreSize:     :int,
             otmsUnderscorePosition: :int,
             otmpFamilyName:         :string,
             otmpFaceName:           :string,
             otmpStyleName:          :string,
             otmpFullName:           :string
    end
  end
end
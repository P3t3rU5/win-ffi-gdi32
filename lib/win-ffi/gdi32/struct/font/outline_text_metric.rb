require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/rect'

require_relative 'text_metric'
require_relative 'panose'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-outlinetextmetrica
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-outlinetextmetricw
    class OUTLINETEXTMETRIC < FFIAdditions::Struct
      attr_accessor :otmSize,
                    :otmTextMetrics,
                    :otmFiller,
                    :otmPanoseNumber,
                    :otmfsSelection,
                    :otmfsType,
                    :otmsCharSlopeRise,
                    :otmsCharSlopeRun,
                    :otmItalicAngle,
                    :otmEMSquare,
                    :otmAscent,
                    :otmDescent,
                    :otmLineGap,
                    :otmsCapEmHeight,
                    :otmsXHeight,
                    :otmrcFontBox,
                    :otmMacAscent,
                    :otmMacDescent,
                    :otmMacLineGap,
                    :otmusMinimumPPEM,
                    :otmptSubscriptSize,
                    :otmptSubscriptOffset,
                    :otmptSuperscriptSize,
                    :otmptSuperscriptOffset,
                    :otmsStrikeoutSize,
                    :otmsStrikeoutPosition,
                    :otmsUnderscoreSize,
                    :otmsUnderscorePosition,
                    :otmpFamilyName,
                    :otmpFaceName,
                    :otmpStyleName,
                    :otmpFullName

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
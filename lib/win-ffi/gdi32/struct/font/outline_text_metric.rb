require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/rect'

require 'win-ffi/gdi32/struct/font/text_metric'
require 'win-ffi/gdi32/struct/font/panose'

module WinFFI
  module Gdi32
    class OUTLINETEXTMETRIC < FFIAdditions::Struct
      layout otmSize:                  :uint,
             otmTextMetrics:      TEXTMETRIC,
             otmFiller:                :byte,
             otmPanoseNumber:         PANOSE,
             otmfsSelection:           :uint,
             otmfsType:                :uint,
             otmsCharSlopeRise:         :int,
             otmsCharSlopeRun:          :int,
             otmItalicAngle:            :int,
             otmEMSquare:              :uint,
             otmAscent:                 :int,
             otmDescent:                :int,
             otmLineGap:               :uint,
             otmsCapEmHeight:          :uint,
             otmsXHeight:              :uint,
             otmrcFontBox:              RECT,
             otmMacAscent:              :int,
             otmMacDescent:             :int,
             otmMacLineGap:            :uint,
             otmusMinimumPPEM:         :uint,
             otmptSubscriptSize:       POINT,
             otmptSubscriptOffset:     POINT,
             otmptSuperscriptSize:     POINT,
             otmptSuperscriptOffset:   POINT,
             otmsStrikeoutSize:        :uint,
             otmsStrikeoutPosition:     :int,
             otmsUnderscoreSize:        :int,
             otmsUnderscorePosition:    :int,
             otmpFamilyName:         :string,
             otmpFaceName:           :string,
             otmpStyleName:          :string,
             otmpFullName:           :string
    end
  end
end
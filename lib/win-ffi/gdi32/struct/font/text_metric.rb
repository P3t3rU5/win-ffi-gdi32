require_relative '../../enum/font/text_metric_pitch_and_family_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-textmetrica
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-textmetricw
    class TEXTMETRIC < FFIAdditions::Struct
      attr_accessor :tmHeight,
                    :tmAscent,
                    :tmDescent,
                    :tmInternalLeading,
                    :tmExternalLeading,
                    :tmAveCharWidth,
                    :tmMaxCharWidth,
                    :tmWeight,
                    :tmOverhang,
                    :tmDigitizedAspectX,
                    :tmDigitizedAspectY,
                    :tmFirstChar,
                    :tmLastChar,
                    :tmDefaultChar,
                    :tmBreakChar,
                    :tmItalic,
                    :tmUnderlined,
                    :tmStruckOut,
                    :tmPitchAndFamily,
                    :tmCharSet

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
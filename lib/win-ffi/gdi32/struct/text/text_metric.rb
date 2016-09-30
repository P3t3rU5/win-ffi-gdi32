require 'win-ffi/gdi32/enum/text/text_metric_pitch_and_family_flag'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd145132(v=vs.85).aspx
    class TEXTMETRIC < FFIAdditions::Struct
      layout tmHeight:                                :long,
             tmAscent:                                :long,
             tmDescent:                               :long,
             tmInternalLeading:                       :long,
             tmExternalLeading:                       :long,
             tmAveCharWidth:                          :long,
             tmMaxCharWidth:                          :long,
             tmWeight:                                :long,
             tmOverhang:                              :long,
             tmDigitizedAspectX:                      :long,
             tmDigitizedAspectY:                      :long,
             tmFirstChar:                             :char,
             tmLastChar:                              :char,
             tmDefaultChar:                           :char,
             tmBreakChar:                             :char,
             tmItalic:                                :byte,
             tmUnderlined:                            :byte,
             tmStruckOut:                             :byte,
             tmPitchAndFamily: TextMetricPitchAndFamilyFlag,
             tmCharSet:                               :byte
    end
  end
end
require_relative '../../enum/font/new_text_metric_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-newtextmetrica
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-newtextmetricw
    class NEWTEXTMETRIC < FFIAdditions::Struct
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
                    :tmCharSet,
                    :ntmFlags,
                    :ntmSizeEM,
                    :ntmCellHeight,
                    :ntmAvgWidth

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
require 'win-ffi/gdi32/enum/text/new_text_metric_flag'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162741(v=vs.85).aspx
    class NEWTEXTMETRIC < FFIAdditions::Struct
      layout tmHeight:             :long,
             tmAscent:             :long,
             tmDescent:            :long,
             tmInternalLeading:    :long,
             tmExternalLeading:    :long,
             tmAveCharWidth:       :long,
             tmMaxCharWidth:       :long,
             tmWeight:             :long,
             tmOverhang:           :long,
             tmDigitizedAspectX:   :long,
             tmDigitizedAspectY:   :long,
             tmFirstChar:         :tchar,
             tmLastChar:          :tchar,
             tmDefaultChar:       :tchar,
             tmBreakChar:         :tchar,
             tmItalic:             :byte,
             tmUnderlined:         :byte,
             tmStruckOut:          :byte,
             tmPitchAndFamily:     :byte,
             tmCharSet:            :byte,
             ntmFlags: NewTextMetricFlag,
             ntmSizeEM:            :uint,
             ntmCellHeight:        :uint,
             ntmAvgWidth:          :uint
    end
  end
end
require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # tmPitchAndFamily flags
    # https://msdn.microsoft.com/en-us/library/dd145132(v=vs.85).aspx
    TextMetricPitchAndFamilyFlag = enum :text_metric_pitch_and_family_flag, [
        :FIXED_PITCH, 0x01,
        :VECTOR,      0x02,
        :DEVICE,      0x08,
        :TRUETYPE,    0x04,
    ]

    define_prefix(:TMPF, TextMetricPitchAndFamilyFlag)
  end
end
module WinFFI
  module Gdi32
    # tmPitchAndFamily flags
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagtextmetrica
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagtextmetricw
    TextMetricPitchAndFamilyFlag = enum :text_metric_pitch_and_family_flag, [
        :FIXED_PITCH, 0x01,
        :VECTOR,      0x02,
        :DEVICE,      0x08,
        :TRUETYPE,    0x04
    ]

    define_prefix(:TMPF, TextMetricPitchAndFamilyFlag)
  end
end
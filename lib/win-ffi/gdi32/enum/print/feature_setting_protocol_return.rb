require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Value returned for FEATURESETTING_PROTOCOL
    FeatureSettingProtocolReturn = enum :feature_setting_protocol_return, [
        :ASCII,  0,
        :BCP,    1,
        :TBCP,   2,
        :BINARY, 3,
    ]

    define_prefix(:PSPROTOCOL, FeatureSettingProtocolReturn)
  end
end
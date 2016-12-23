require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Parameter for GET_PS_FEATURESETTING escape
    FeatureSetting = enum :feature_setting, [
        :NUP,        0,
        :OUTPUT,     1,
        :PSLEVEL,    2,
        :CUSTPAPER,  3,
        :MIRROR,     4,
        :NEGATIVE,   5,
        :PROTOCOL,   6,
    ]

    define_prefix(:FEATURESETTING, FeatureSetting)
  end
end
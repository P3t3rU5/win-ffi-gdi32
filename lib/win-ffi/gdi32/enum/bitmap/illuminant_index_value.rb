module WinFFI
  module Gdi32
    IlluminantIndexValue = enum :illuminant_index_value, [
        :DEVICE_DEFAULT, 0,
        :A,              1,
        :B,              2,
        :C,              3,
        :D50,            4,
        :D55,            5,
        :D65,            6,
        :D75,            7,
        :MAX_INDEX,      8,
        :F2,             8,

        :TUNGSTEN,       1,
        :NTSC,           3,
        :DAYLIGHT,       3,
        :FLUORESCENT,    8,
    ]

    define_prefix(:ILLUMINANT, IlluminantIndexValue)
  end
end
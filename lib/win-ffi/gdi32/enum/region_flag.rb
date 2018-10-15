module WinFFI
  module Gdi32
    RegionFlag = enum :region_flag, [
        :RGN_ERROR,     0,
        :ERROR,         0,
        :NULLREGION,    1,
        :SIMPLEREGION,  2,
        :COMPLEXREGION, 3
    ]
  end
end
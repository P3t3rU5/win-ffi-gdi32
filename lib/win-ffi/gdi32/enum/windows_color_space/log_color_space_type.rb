module WinFFI
  module Gdi32
    LogColorSpaceType = enum :log_color_space_type, [

    ]

    define_prefix(:LCS, LogColorSpaceType)
  end
end
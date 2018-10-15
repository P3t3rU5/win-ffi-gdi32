module WinFFI
  module Gdi32
    PanFamily = enum :pan_family, [
        :ANY,                 0, # Any
        :NO_FIT,              1, # No Fit
        :TEXT_DISPLAY, 2, # Text and Display
        :SCRIPT,       3, # Script
        :DECORATIVE,   4, # Decorative
        :PICTORIAL,    5  # Pictorial
    ]

    define_prefix(:PAN_FAMILY, PanFamily)
  end
end
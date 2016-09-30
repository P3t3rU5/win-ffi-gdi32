require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # DIB color table identifiers
    DibColorIdentifier = enum :dib_color_identifier, [
        :RGB_COLORS, 0,
        :PAL_COLORS, 1
    ]

    define_prefix(:DIB, DibColorIdentifier)
  end
end
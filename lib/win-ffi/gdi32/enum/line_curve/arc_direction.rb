require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    ArcDirection = enum :arc_direction, [
        :COUNTERCLOCKWISE, 1,
        :CLOCKWISE,        2,
    ]
  end
end
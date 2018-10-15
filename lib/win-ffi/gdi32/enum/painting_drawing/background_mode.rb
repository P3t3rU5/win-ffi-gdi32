module WinFFI
  module Gdi32
    # Background Modes
    BackgroundMode = enum :background_mode, [:TRANSPARENT, 1, :OPAQUE, 2, :BKMODE_LAST, 2]
  end
end
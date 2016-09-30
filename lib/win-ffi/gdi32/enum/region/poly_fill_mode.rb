require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # PolyFill() Modes
    PolyFillMode = enum :poly_fill_mode, [
        :ALTERNATE,     1,
        :WINDING,       2,
        :POLYFILL_LAST, 2,
    ]
  end
end
module WinFFI
  module Gdi32
    # bits defined in wFlags of RASTERIZER_STATUS
    RasterizerStatusFlag = enum :rasterizer_status_flag, [:AVAILABLE, 0x0001, :ENABLED, 0x0002]

    define_prefix(:TT, RasterizerStatusFlag)
  end
end
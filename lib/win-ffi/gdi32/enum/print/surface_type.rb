module WinFFI
  module Gdi32
    SurfaceType = enum :surface_type, [:BITMAP, 0, :DEVICE, 1, :DEVBITMAP, 3]

    define_prefix(:STYPE, SurfaceType)
  end
end
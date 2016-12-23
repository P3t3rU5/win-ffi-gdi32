require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    TrueTypePolygonHeaderType = enum :true_type_polygon_header_type, [:POLYGON_TYPE, 24]

    define_prefix(:TT, TrueTypePolygonHeaderType)
  end
end
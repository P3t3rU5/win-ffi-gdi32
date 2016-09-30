module WinFFI
  module Gdi32
    TrueTypePolyCurveType = enum :true_type_poly_curve_type, [
        :LINE,    1,
        :QSPLINE, 2,
        :CSPLINE, 3,
    ]

    define_prefix(:TT_PRIM, TrueTypePolyCurveType)
  end
end
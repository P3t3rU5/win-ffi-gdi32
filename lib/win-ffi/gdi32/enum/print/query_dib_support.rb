require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Flag returned from QUERYDIBSUPPORT
    QueryDibSupport = enum :query_dib_support, [
        :SETDIBITS,   1,
        :GETDIBITS,   2,
        :DIBTOSCREEN, 4,
        :STRETCHDIB,  8,
    ]

    define_prefix(:QDI, QueryDibSupport)
  end
end
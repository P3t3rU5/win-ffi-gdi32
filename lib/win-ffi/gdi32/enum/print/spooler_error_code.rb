require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    SpoolerErrorCode = enum :spooler_error_code, [
        :NOTREPORTED, 0x4000,
        :ERROR,       (-1),
        :APPABORT,    (-2),
        :USERABORT,   (-3),
        :OUTOFDISK,   (-4),
        :OUTOFMEMORY, (-5)
    ]

    define_prefix(:SP, SpoolerErrorCode)
  end
end
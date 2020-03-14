require 'win-ffi/core/struct/rectl'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/winddi/ns-winddi-enumrects
    class ENUMRECTS < FFIAdditions::Struct
      attr_accessor :c, :arcl

      layout c:    :ulong,
             arcl: [RECTL, 1]
    end
  end
end
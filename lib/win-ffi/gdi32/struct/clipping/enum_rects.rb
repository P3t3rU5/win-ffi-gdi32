require 'win-ffi/gdi32/struct/metafile/rectl'

module WinFFI
  module Gdi32
    class ENUMRECTS < FFIAdditions::Struct
      layout c:       :ulong,
             arcl: [RECTL, 1]
    end
  end
end
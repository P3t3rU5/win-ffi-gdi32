require 'win-ffi/gdi32/struct/region/rgn_data_header'

module WinFFI
  module Gdi32
    class RGNDATA < FFIAdditions::Struct
      layout rdh: RGNDATAHEADER,
             Buffer: [:char, 1]
    end
  end
end
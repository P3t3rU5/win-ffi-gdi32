require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class PATHOBJ < FFIAdditions::Struct
      layout fl:      :flong,
             cCurves: :ulong
    end
  end
end
require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class GRADIENT_TRIANGLE < FFIAdditions::Struct
      layout Vertex1: :ulong,
             Vertex2: :ulong,
             Vertex3: :ulong
    end
  end
end
module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-gradient_triangle
    class GRADIENT_TRIANGLE < FFIAdditions::Struct
      attr_accessor :Vertex1, :Vertex2, :Vertex3

      layout Vertex1: :ulong,
             Vertex2: :ulong,
             Vertex3: :ulong
    end
  end
end
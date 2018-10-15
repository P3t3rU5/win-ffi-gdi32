module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_gradient_triangle
    class GRADIENT_TRIANGLE < FFIAdditions::Struct
      def Vertex1; end
      def Vertex1=(v) end
      def Vertex2; end
      def Vertex2=(v) end
      def Vertex3; end
      def Vertex3=(v) end

      layout Vertex1: :ulong,
             Vertex2: :ulong,
             Vertex3: :ulong
    end
  end
end
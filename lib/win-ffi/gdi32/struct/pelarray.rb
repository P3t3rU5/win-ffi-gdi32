module WinFFI
  module Gdi32
    class PELARRAY < FFIAdditions::Struct
      def paXCount; end
      def paXCount=() end
      def paYCount; end
      def paYCount=() end
      def paXExt; end
      def paXExt=() end
      def paYExt; end
      def paYExt=() end
      def paRGBs; end
      def paRGBs=() end

      layout paXCount: :long,
             paYCount: :long,
             paXExt:   :long,
             paYExt:   :long,
             paRGBs:   :byte
    end
  end
end
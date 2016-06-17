

module WinFFI
  module Gdi32
    class << self
      #define CopyRgn(hrgnDst,hrgnSrc) CombineRgn(hrgnDst,hrgnSrc,0,RGN_COPY)
      def CopyRgn(hrgnDst, hrgnSrc)
        CombineRgn(hrgnDst, hrgnSrc, 0, RGN::COPY)
      end

      #define IntersectRgn(hrgnResult,hrgnA,hrgnB) CombineRgn(hrgnResult,hrgnA,hrgnB,RGN_AND)
      def IntersectRgn(hrgnResult, hrgnA, hrgnB)
        CombineRgn(hrgnResult, hrgnA, hrgnB, RGN::AND)
      end

      #define SubtractRgn(hrgnResult,hrgnA,hrgnB) CombineRgn(hrgnResult,hrgnA,hrgnB,RGN_DIFF)
      def SubtractRgn(hrgnResult, hrgnA, hrgnB)
        CombineRgn(hrgnResult, hrgnA, hrgnB, RGN::DIFF)
      end

      #define UnionRgn(hrgnResult,hrgnA,hrgnB) CombineRgn(hrgnResult,hrgnA,hrgnB,RGN_OR)
      def UnionRgn(hrgnResult, hrgnA, hrgnB)
        CombineRgn(hrgnResult, hrgnA, hrgnB, RGN::OR)
      end

      #define XorRgn(hrgnResult,hrgnA,hrgnB) CombineRgn(hrgnResult,hrgnA,hrgnB,RGN_XOR)
      def XorRgn(hrgnResult, hrgnA, hrgnB)
        CombineRgn(hrgnResult, hrgnA, hrgnB, RGN::XOR)
      end
    end
  end
end
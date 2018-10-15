require_relative '../function/region'

module WinFFI
  module Gdi32
    #define CopyRgn(hrgnDst,hrgnSrc) CombineRgn(hrgnDst,hrgnSrc,0,RGN_COPY)
    def self.CopyRgn(hrgnDst, hrgnSrc)
      CombineRgn(hrgnDst, hrgnSrc, 0, RGN::COPY)
    end

    #define IntersectRgn(hrgnResult,hrgnA,hrgnB) CombineRgn(hrgnResult,hrgnA,hrgnB,RGN_AND)
    def self.IntersectRgn(hrgnResult, hrgnA, hrgnB)
      CombineRgn(hrgnResult, hrgnA, hrgnB, RGN::AND)
    end

    #define SubtractRgn(hrgnResult,hrgnA,hrgnB) CombineRgn(hrgnResult,hrgnA,hrgnB,RGN_DIFF)
    def self.SubtractRgn(hrgnResult, hrgnA, hrgnB)
      CombineRgn(hrgnResult, hrgnA, hrgnB, RGN::DIFF)
    end

    #define UnionRgn(hrgnResult,hrgnA,hrgnB) CombineRgn(hrgnResult,hrgnA,hrgnB,RGN_OR)
    def self.UnionRgn(hrgnResult, hrgnA, hrgnB)
      CombineRgn(hrgnResult, hrgnA, hrgnB, RGN::OR)
    end

    #define XorRgn(hrgnResult,hrgnA,hrgnB) CombineRgn(hrgnResult,hrgnA,hrgnB,RGN_XOR)
    def self.XorRgn(hrgnResult, hrgnA, hrgnB)
      CombineRgn(hrgnResult, hrgnA, hrgnB, RGN::XOR)
    end
  end
end
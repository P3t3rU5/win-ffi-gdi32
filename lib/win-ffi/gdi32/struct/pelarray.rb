module WinFFI
  module Gdi32
    class PELARRAY < FFIAdditions::Struct
      attr_accessor :paXCount, :paYCount, :paXExt, :paYExt, :paRGBs

      layout paXCount: :long,
             paYCount: :long,
             paXExt:   :long,
             paYExt:   :long,
             paRGBs:   :byte
    end
  end
end
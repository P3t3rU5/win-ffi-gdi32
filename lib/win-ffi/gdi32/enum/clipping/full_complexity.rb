module WinFFI
  module Gdi32
    FullComplexity = enum :full_complexity, [:RECT, 1, :RECT4, 2, :COMPLEX, 3]

    define_prefix(:FC, FullComplexity)
  end
end
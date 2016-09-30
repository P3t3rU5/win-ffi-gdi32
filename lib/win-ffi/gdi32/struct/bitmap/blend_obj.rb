require 'win-ffi/gdi32/struct/bitmap/blend_function'

module WinFFI
  module Gdi32
    class BLENDOBJ < FFIAdditions::Struct
      layout BlendFunction: BLENDFUNCTION
    end
  end
end
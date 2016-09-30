require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class POINTFLOAT < FFIAdditions::Struct
      layout x: :float,
             y: :float
    end
  end
end
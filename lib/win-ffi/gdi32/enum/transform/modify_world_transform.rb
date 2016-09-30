require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    ModifyWorldTransform = enum :modify_world_transform, [
        :IDENTITY,      1,
        :LEFTMULTIPLY,  2,
        :RIGHTMULTIPLY, 3,
        :MIN,           1,
        :MAX,           3,
    ]

    define_prefix(:MWT, ModifyWorldTransform)
  end
end
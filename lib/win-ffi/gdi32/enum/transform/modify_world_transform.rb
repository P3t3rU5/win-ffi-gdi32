module WinFFI
  module Gdi32
    ModifyWorldTransform = enum :modify_world_transform, [
        :MIN,           1,
        :IDENTITY,      1,
        :LEFTMULTIPLY,  2,
        :MAX,           3,
        :RIGHTMULTIPLY, 3
    ]

    define_prefix(:MWT, ModifyWorldTransform)
  end
end
module WinFFI
  module Gdi32
    FontResourceFlag = enum :font_resource_flag, [:PRIVATE, 0x10, :NOT_ENUM, 0x20]

    define_prefix(:FR, FontResourceFlag)
  end
end
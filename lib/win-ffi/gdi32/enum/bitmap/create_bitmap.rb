require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # constants for CreateDIBitmap
    # https://msdn.microsoft.com/en-us/library/dd183491(v=vs.85).aspx
    CreateBitmap = enum :create_bitmap, [:INIT, 0x04]

    define_prefix(:CBM, CreateBitmap)
  end
end
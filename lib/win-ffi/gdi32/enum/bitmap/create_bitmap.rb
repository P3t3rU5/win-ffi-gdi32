module WinFFI
  module Gdi32
    # constants for CreateDIBitmap
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdibitmap
    CreateBitmap = enum :create_bitmap, [:INIT, 0x04]

    define_prefix(:CBM, CreateBitmap)
  end
end
module WinFFI
  module Gdi32
    # palette entry flags
    # https://msdn.microsoft.com/en-us/library/dd162769(v=vs.85).aspx
    PaletteEntryFlag = enum :palette_entry_flag, [:RESERVED, 0x01, :EXPLICIT, 0x02, :NOCOLLAPSE, 0x04]

    define_prefix(:PC, PaletteEntryFlag)
  end
end
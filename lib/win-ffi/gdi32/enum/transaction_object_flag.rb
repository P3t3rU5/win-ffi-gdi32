module WinFFI
  module Gdi32
    TransactionObjectFlag = enum :transaction_object_flag, [
        :TRIVIAL,      0x00000001,
        :TABLE,        0x00000002,
        :TO_MONO,      0x00000004,
        :FROM_CMYK,    0x00000008,
        :DEVICE_ICM,   0x00000010,
        :HOST_ICM,     0x00000020,
    ]
  end
end
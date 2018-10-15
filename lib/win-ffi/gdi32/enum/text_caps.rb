module WinFFI
  module Gdi32
    # Text Capabilities
    TextCaps = enum :text_caps, [
        :OP_CHARACTER, 0x00000001,
        :OP_STROKE,    0x00000002,
        :CP_STROKE,    0x00000004,
        :CR_90,        0x00000008,
        :CR_ANY,       0x00000010,
        :SF_X_YINDEP,  0x00000020,
        :SA_DOUBLE,    0x00000040,
        :SA_INTEGER,   0x00000080,
        :SA_CONTIN,    0x00000100,
        :EA_DOUBLE,    0x00000200,
        :IA_ABLE,      0x00000400,
        :UA_ABLE,      0x00000800,
        :SO_ABLE,      0x00001000,
        :RA_ABLE,      0x00002000,
        :VA_ABLE,      0x00004000,
        :RESERVED,     0x00008000,
        :SCROLLBLT,    0x00010000,
    ]

    define_prefix(:TC, TextCaps)
  end
end
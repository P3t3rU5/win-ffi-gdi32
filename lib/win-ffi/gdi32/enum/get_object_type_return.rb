module WinFFI
  module Gdi32
    GetObjectTypeReturn = enum :get_object_type_return, [
        :PEN,          1,
        :BRUSH,        2,
        :DC,           3,
        :METADC,       4,
        :PAL,          5,
        :FONT,         6,
        :BITMAP,       7,
        :REGION,       8,
        :METAFILE,     9,
        :MEMDC,       10,
        :EXTPEN,      11,
        :ENHMETADC,   12,
        :ENHMETAFILE, 13,
        :COLORSPACE,  14,
    ]

    GDI_OBJ_LAST = 14

    define_prefix(:OBJ, GetObjectTypeReturn)
  end
end
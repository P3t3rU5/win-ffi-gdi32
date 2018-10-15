module WinFFI
  module Gdi32
    # Enhanced metafile record types.
    EnhancedMetafileRecord = enum :enhanced_metafile_record, [
        :MIN,                        1,
        :MAX,                        122,

        :HEADER,                     1,
        :POLYBEZIER,                 2,
        :POLYGON,                    3,
        :POLYLINE,                   4,
        :POLYBEZIERTO,               5,
        :POLYLINETO,                 6,
        :POLYPOLYLINE,               7,
        :POLYPOLYGON,                8,
        :SETWINDOWEXTEX,             9,
        :SETWINDOWORGEX,             10,
        :SETVIEWPORTEXTEX,           11,
        :SETVIEWPORTORGEX,           12,
        :SETBRUSHORGEX,              13,
        :EOF,                        14,
        :SETPIXELV,                  15,
        :SETMAPPERFLAGS,             16,
        :SETMAPMODE,                 17,
        :SETBKMODE,                  18,
        :SETPOLYFILLMODE,            19,
        :SETROP2,                    20,
        :SETSTRETCHBLTMODE,          21,
        :SETTEXTALIGN,               22,
        :SETCOLORADJUSTMENT,         23,
        :SETTEXTCOLOR,               24,
        :SETBKCOLOR,                 25,
        :OFFSETCLIPRGN,              26,
        :MOVETOEX,                   27,
        :SETMETARGN,                 28,
        :EXCLUDECLIPRECT,            29,
        :INTERSECTCLIPRECT,          30,
        :SCALEVIEWPORTEXTEX,         31,
        :SCALEWINDOWEXTEX,           32,
        :SAVEDC,                     33,
        :RESTOREDC,                  34,
        :SETWORLDTRANSFORM,          35,
        :MODIFYWORLDTRANSFORM,       36,
        :SELECTOBJECT,               37,
        :CREATEPEN,                  38,
        :CREATEBRUSHINDIRECT,        39,
        :DELETEOBJECT,               40,
        :ANGLEARC,                   41,
        :ELLIPSE,                    42,
        :RECTANGLE,                  43,
        :ROUNDRECT,                  44,
        :ARC,                        45,
        :CHORD,                      46,
        :PIE,                        47,
        :SELECTPALETTE,              48,
        :CREATEPALETTE,              49,
        :SETPALETTEENTRIES,          50,
        :RESIZEPALETTE,              51,
        :REALIZEPALETTE,             52,
        :EXTFLOODFILL,               53,
        :LINETO,                     54,
        :ARCTO,                      55,
        :POLYDRAW,                   56,
        :SETARCDIRECTION,            57,
        :SETMITERLIMIT,              58,
        :BEGINPATH,                  59,
        :ENDPATH,                    60,
        :CLOSEFIGURE,                61,
        :FILLPATH,                   62,
        :STROKEANDFILLPATH,          63,
        :STROKEPATH,                 64,
        :FLATTENPATH,                65,
        :WIDENPATH,                  66,
        :SELECTCLIPPATH,             67,
        :ABORTPATH,                  68,

        :GDICOMMENT,                 70,
        :FILLRGN,                    71,
        :FRAMERGN,                   72,
        :INVERTRGN,                  73,
        :PAINTRGN,                   74,
        :EXTSELECTCLIPRGN,           75,
        :BITBLT,                     76,
        :STRETCHBLT,                 77,
        :MASKBLT,                    78,
        :PLGBLT,                     79,
        :SETDIBITSTODEVICE,          80,
        :STRETCHDIBITS,              81,
        :EXTCREATEFONTINDIRECTW,     82,
        :EXTTEXTOUTA,                83,
        :EXTTEXTOUTW,                84,
        :POLYBEZIER16,               85,
        :POLYGON16,                  86,
        :POLYLINE16,                 87,
        :POLYBEZIERTO16,             88,
        :POLYLINETO16,               89,
        :POLYPOLYLINE16,             90,
        :POLYPOLYGON16,              91,
        :POLYDRAW16,                 92,
        :CREATEMONOBRUSH,            93,
        :CREATEDIBPATTERNBRUSHPT,    94,
        :EXTCREATEPEN,               95,
        :POLYTEXTOUTA,               96,
        :POLYTEXTOUTW,               97,

        :SETICMMODE,                 98,
        :CREATECOLORSPACE,           99,
        :SETCOLORSPACE,              100,
        :DELETECOLORSPACE,           101,
        :GLSRECORD,                  102,
        :GLSBOUNDEDRECORD,           103,
        :PIXELFORMAT,                104,

        :RESERVED_105,               105,
        :RESERVED_106,               106,
        :RESERVED_107,               107,
        :RESERVED_108,               108,
        :RESERVED_109,               109,
        :RESERVED_110,               110,
        :COLORCORRECTPALETTE,        111,
        :SETICMPROFILEA,             112,
        :SETICMPROFILEW,             113,
        :ALPHABLEND,                 114,
        :SETLAYOUT,                  115,
        :TRANSPARENTBLT,             116,

        :RESERVED_117,               117,

        :GRADIENTFILL,               118,
        :RESERVED_119,               119,
        :RESERVED_120,               120,
        :COLORMATCHTOTARGETW,        121,
        :CREATECOLORSPACEW,          122
    ]

    define_prefix(:EMR, EnhancedMetafileRecord)
  end
end
require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Device Parameters for GetDeviceCaps()
    DeviceContext = enum :device_context, [
        :DRIVERVERSION,     0,
        :TECHNOLOGY,        2,
        :HORZSIZE,          4,
        :VERTSIZE,          6,
        :HORZRES,           8,
        :VERTRES,          10,
        :BITSPIXEL,        12,
        :PLANES,           14,
        :NUMBRUSHES,       16,
        :NUMPENS,          18,
        :NUMMARKERS,       20,
        :NUMFONTS,         22,
        :NUMCOLORS,        24,
        :PDEVICESIZE,      26,
        :CURVECAPS,        28,
        :LINECAPS,         30,
        :POLYGONALCAPS,    32,
        :TEXTCAPS,         34,
        :CLIPCAPS,         36,
        :RASTERCAPS,       38,
        :ASPECTX,          40,
        :ASPECTY,          42,
        :ASPECTXY,         44,

        :LOGPIXELSX,       88,
        :LOGPIXELSY,       90,

        :SIZEPALETTE,     104,
        :NUMRESERVED,     106,
        :COLORRES,        108,

        # Printing related DeviceCaps. These replace the appropriate Escapes
        :PHYSICALWIDTH,   110,
        :PHYSICALHEIGHT,  111,
        :PHYSICALOFFSETX, 112,
        :PHYSICALOFFSETY, 113,
        :SCALINGFACTORX,  114,
        :SCALINGFACTORY,  115,

        # Display driver specific
        :VREFRESH,        116,
        :DESKTOPVERTRES,  117,
        :DESKTOPHORZRES,  118,
        :BLTALIGNMENT,    119,

        :SHADEBLENDCAPS,  120,
        :COLORMGMTCAPS,   121
    ]
  end
end
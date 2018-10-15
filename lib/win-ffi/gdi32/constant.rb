require 'win-ffi/core/macro/util'

module WinFFI
  module Gdi32
    if WINDOWS_VERSION >= :xp
      # HGDI_ERROR = WinFFI.LongToHandle(0xFFFFFFFF)

      FEATURESETTING_PRIVATE_BEGIN = 0x1000
      FEATURESETTING_PRIVATE_END   = 0x1FFF

      if WINDOWS_VERSION >= :vista
        MILCORE_TS_QUERYVER_RESULT_FALSE =        0x0
        MILCORE_TS_QUERYVER_RESULT_TRUE  = 0x7FFFFFFF
      end
    else
      HGDI_ERROR = FFI::MemoryPointer.new(WinFFI.find_type(:handle)).write_int(-1)
    end

    GDI_ERROR = CLR_INVALID = 0xFFFFFFFF
    ELF_VERSION = ELF_CULTURE_LATIN = PR_JOBSTATUS = 0
    ELF_VENDOR_SIZE = 4
    # Logical Font
    LF_FULLFACESIZE = 64
    MM_MAX_NUMAXES  = 16

    DEFAULT_GUI_FONT = 17

    FONTMAPPER_MAX = 10

    RGB_GAMMA_MIN = 02500
    RGB_GAMMA_MAX = 65000

    REFERENCE_WHITE_MIN = 6000
    REFERENCE_WHITE_MAX = 10000
    REFERENCE_BLACK_MIN = 0
    REFERENCE_BLACK_MAX = 4000

    COLOR_ADJ_MIN = -100
    COLOR_ADJ_MAX = 100

    ASPECT_FILTERING = 0x0001

    # Logcolorspace signature
    LCS_SIGNATURE = 'PSOC'

    # Logcolorspace lcsType values
    LCS_sRGB = 'sRGB'
    LCS_WINDOWS_COLOR_SPACE = 'Win ' # Windows default color space
    LCS_CALIBRATED_RGB = 0x00000000

    # Values for bV5CSType
    PROFILE_LINKED   = 'LINK'
    PROFILE_EMBEDDED = 'MBED'
  end
end
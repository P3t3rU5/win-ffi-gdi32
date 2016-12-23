require 'win-ffi/gdi32'

require 'win-ffi/core/macro/util'

module WinFFI
  module Gdi32
    GDI_ERROR   = 0xFFFFFFFF
    CLR_INVALID = 0xFFFFFFFF

    CCHFORMNAME     = 32
    CCHDEVICENAME   = 32
    ELF_VENDOR_SIZE = 4
    # Logical Font
    LF_FACESIZE     = 32
    LF_FULLFACESIZE = 64
    MM_MAX_NUMAXES  = 16

    HGDI_ERROR = if WindowsVersion >= :xp then
      WinFFI.LongToHandle(0xFFFFFFFF)
    else
      FFI::MemoryPointer.new(WinFFI.find_type(:handle)).write_int(-1)
    end

    ASPECT_FILTERING = 0x0001
    PR_JOBSTATUS     = 0x0000

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
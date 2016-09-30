require 'win-ffi/core'
require 'win-ffi/core/lib_base'

module WinFFI
  module Gdi32
    extend WinFFI::LibBase

    ffi_lib 'gdi32'

    typedef :dword, :flong

    CCHFORMNAME     = 32
    CCHDEVICENAME   = 32
    CLR_INVALID     = 0xFFFFFFFF
    ELF_VENDOR_SIZE = 4
    # Logical Font
    LF_FACESIZE     = 32
    LF_FULLFACESIZE = 64
    MM_MAX_NUMAXES  = 16
  end
end
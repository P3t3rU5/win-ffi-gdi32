require 'win-ffi/gdi32/struct/font/log_font'
require 'win-ffi/gdi32/struct/font/panose'

module WinFFI
  module Gdi32
    # The extended logical font
    # An extension of the ENUMLOGFONT
    # https://msdn.microsoft.com/en-us/library/dd162710(v=vs.85).aspx
    class EXTLOGFONT < FFIAdditions::Struct
      layout elfLogFont:                                LOGFONT,
             elfFullName: WideInlineString.new(LF_FULLFACESIZE),
             elfStyle:        WideInlineString.new(LF_FACESIZE),
             elfVersion:                                 :dword,
             elfStyleSize:                               :dword,
             elfMatch:                                   :dword,
             elfReserved:                                :dword,
             elfVendorId:              [:byte, ELF_VENDOR_SIZE],
             elfCulture:                                 :dword,
             elfPanose:                                  PANOSE
    end
  end
end
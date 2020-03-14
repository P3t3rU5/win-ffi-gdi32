require 'win-ffi/gdi32/constant_base'
require 'win-ffi/gdi32/struct/font/log_font'

require_relative '../../constant'
require_relative 'panose'

module WinFFI
  module Gdi32
    # The extended logical font
    # An extension of the ENUMLOGFONT
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-extlogfonta
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-extlogfontw
    class EXTLOGFONT < FFIAdditions::Struct
      attr_accessor :elfLogFont,
                    :elfFullName,
                    :elfStyle,
                    :elfVersion,
                    :elfStyleSize,
                    :elfMatch,
                    :elfReserved,
                    :elfVendorId,
                    :elfCulture,
                    :elfPanose

      layout elfLogFont:   LOGFONT,
             elfFullName:  WideInlineString.new(LF_FULLFACESIZE),
             elfStyle:     WideInlineString.new(LF_FACESIZE),
             elfVersion:   :dword,
             elfStyleSize: :dword,
             elfMatch:     :dword,
             elfReserved:  :dword,
             elfVendorId:  [:byte, ELF_VENDOR_SIZE],
             elfCulture:   :dword,
             elfPanose:    PANOSE
    end
  end
end
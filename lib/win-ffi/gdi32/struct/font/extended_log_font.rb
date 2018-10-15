require 'win-ffi/gdi32/constant_base'
require 'win-ffi/gdi32/struct/font/log_font'

require_relative '../../constant'
require_relative 'panose'

module WinFFI
  module Gdi32
    # The extended logical font
    # An extension of the ENUMLOGFONT
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagextlogfonta
    class EXTLOGFONT < FFIAdditions::Struct
      def elfLogFont; end
      def elfLogFont=(v); end
      def elfFullName; end
      def elfFullName=(v); end
      def elfStyle; end
      def elfStyle=(v); end
      def elfVersion; end
      def elfVersion=(v); end
      def elfStyleSize; end
      def elfStyleSize=(v); end
      def elfMatch; end
      def elfMatch=(v); end
      def elfReserved; end
      def elfReserved=(v); end
      def elfVendorId; end
      def elfVendorId=(v); end
      def elfCulture; end
      def elfCulture=(v); end
      def elfPanose; end
      def elfPanose=(v); end

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
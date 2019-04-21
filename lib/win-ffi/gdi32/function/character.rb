require_relative '../struct/character/char_set_info'
require_relative '../enum/character/translate_charset_info_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcharset
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetTextCharset(hdc); end
    attach_function 'GetTextCharset', [:hdc], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcharsetinfo
      # @param [FFI::Pointer] hdc
      # @param [FFI::Pointer] lpSig
      # @param [Integer] dwFlags
      # @return [Integer]
    def self.GetTextCharsetInfo(hdc, lpSig, dwFlags); end
    attach_function 'GetTextCharsetInfo', [:hdc, FONTSIGNATURE.ptr(:out), :dword], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcharset
      # @param [FFI::Pointer] lpSrc
      # @param [FFI::Pointer] lpCs
      # @param [Integer] dwFlags
      # @return [true, false]
    def self.TranslateCharsetInfo(lpSrc, lpCs, dwFlags); end
    attach_function 'TranslateCharsetInfo', [:pointer, CHARSETINFO.ptr(:out), TranslateCharsetInfoFlag], :bool
  end
end
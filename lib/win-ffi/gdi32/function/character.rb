require_relative '../struct/character/char_set_info'
require_relative '../enum/character/translate_charset_info_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcharset
    # int GetTextCharset(_In_ HDC hdc)
    def self.GetTextCharset(hdc); end
    attach_function 'GetTextCharset', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcharsetinfo
    # int GetTextCharsetInfo( _In_ HDC hdc, _Out_opt_ LPFONTSIGNATURE lpSig, _In_ DWORD dwFlags)
    def self.GetTextCharsetInfo(hdc, lpSig, dwFlags); end
    attach_function 'GetTextCharsetInfo', [:hdc, FONTSIGNATURE, :dword], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcharset
    # BOOL TranslateCharsetInfo( _Inout_ DWORD FAR *lpSrc, _Out_ LPCHARSETINFO lpCs, _In_ DWORD dwFlags)
    def self.TranslateCharsetInfo(lpSrc, lpCs, dwFlags); end
    attach_function 'TranslateCharsetInfo', [:pointer, CHARSETINFO.ptr(:out), TranslateCharsetInfoFlag], :bool
  end
end
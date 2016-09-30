require 'win-ffi/gdi32/struct/character/char_set_info'
require 'win-ffi/gdi32/enum/character/translate_charset_info_flag'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd318125(v=vs.85).aspx
    # int GetTextCharset(_In_ HDC hdc)
    attach_function 'GetTextCharset', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd318126(v=vs.85).aspx
    # int GetTextCharsetInfo(
    #   _In_      HDC             hdc,
    #   _Out_opt_ LPFONTSIGNATURE lpSig,
    #   _In_      DWORD           dwFlags)
    attach_function 'GetTextCharsetInfo', [:hdc, FONTSIGNATURE, :dword], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd374077(v=vs.85).aspx
    # BOOL TranslateCharsetInfo(
    #   _Inout_ DWORD FAR     *lpSrc,
    #   _Out_   LPCHARSETINFO lpCs,
    #   _In_    DWORD         dwFlags)
    attach_function 'TranslateCharsetInfo', [:pointer, CHARSETINFO.ptr(:out), TranslateCharsetInfoFlag], :bool

  end
end
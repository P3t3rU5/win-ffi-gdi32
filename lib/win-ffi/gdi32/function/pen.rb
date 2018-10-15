require_relative '../enum/pen/style'

require_relative '../struct/pen/log'
require_relative '../struct/brush/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpen
    # HPEN CreatePen( _In_ int      fnPenStyle, _In_ int      nWidth, _In_ COLORREF crColor)
    def self.CreatePen(fnPenStyle, nWidth, crColor); end
    attach_function 'CreatePen', [PenStyle, :int, :colorref], :hpen

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpenindirect
    # HPEN CreatePenIndirect(_In_ const LOGPEN *lplgpn)
    def self.CreatePenIndirect(lplgpn); end
    attach_function 'CreatePenIndirect', [LOGPEN.ptr(:in)], :hpen

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extcreatepen
    # HPEN ExtCreatePen(
    #   _In_       DWORD    dwPenStyle,
    #   _In_       DWORD    dwWidth,
    #   _In_ const LOGBRUSH *lplb,
    #   _In_       DWORD    dwStyleCount,
    #   _In_ const DWORD    *lpStyle)
    def self.ExtCreatePen(dwPenStyle, dwWidth, lplb, dwStyleCount, lpStyle); end
    attach_function 'ExtCreatePen', [:dword, :dword, LOGBRUSH.ptr(:in), :dword, :pointer], :hpen
  end
end
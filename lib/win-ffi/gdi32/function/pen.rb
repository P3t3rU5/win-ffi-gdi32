require 'win-ffi/gdi32/enum/pen/pen_style'

require 'win-ffi/gdi32/struct/pen/log_pen'
require 'win-ffi/gdi32/struct/brush/log_brush'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183509(v=vs.85).aspx
    # HPEN CreatePen(
    #   _In_ int      fnPenStyle,
    #   _In_ int      nWidth,
    #   _In_ COLORREF crColor)
    attach_function 'CreatePen', [PenStyle, :int, :colorref], :hpen

    # https://msdn.microsoft.com/en-us/library/dd162970(v=vs.85).aspx
    # HPEN CreatePenIndirect(_In_ const LOGPEN *lplgpn)
    attach_function 'CreatePenIndirect', [LOGPEN.ptr(:in)], :hpen

    # https://msdn.microsoft.com/en-us/library/dd162705(v=vs.85).aspx
    # HPEN ExtCreatePen(
    #   _In_       DWORD    dwPenStyle,
    #   _In_       DWORD    dwWidth,
    #   _In_ const LOGBRUSH *lplb,
    #   _In_       DWORD    dwStyleCount,
    #   _In_ const DWORD    *lpStyle)
    attach_function 'ExtCreatePen', [:dword, :dword, LOGBRUSH.ptr(:in), :dword, :pointer], :hpen
  end
end
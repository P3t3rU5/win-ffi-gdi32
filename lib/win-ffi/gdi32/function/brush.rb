require 'win-ffi/core/struct/point'

require_relative '../enum/brush/hatch_style'
require_relative '../enum/dib_color_identifier'
require_relative '../enum/bitmap/bit_blt_flag'

require_relative '../struct/brush/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createbrushindirect
    # HBRUSH CreateBrushIndirect( _In_  const LOGBRUSH *lplb )
    def self.CreateBrushIndirect(lplb); end
    attach_function 'CreateBrushIndirect', [LOGBRUSH.ptr(:in)], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdibpatternbrush
    # HBRUSH CreateDIBPatternBrush( _In_  HGLOBAL hglbDIBPacked, _In_  UINT fuColorSpec )
    def self.CreateDIBPatternBrush(hglbDIBPacked, fuColorSpec); end
    attach_function 'CreateDIBPatternBrush', [:hglobal, DibColorIdentifier], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdibpatternbrushpt
    # HBRUSH CreateDIBPatternBrushPt( _In_  const VOID *lpPackedDIB, _In_  UINT iUsage )
    def self.CreateDIBPatternBrushPt(lpPackedDIB, iUsage); end
    attach_function 'CreateDIBPatternBrushPt', [:pointer, DibColorIdentifier], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createhatchbrush
    # HBRUSH CreateHatchBrush( _In_  int fnStyle, _In_  COLORREF clrref )
    def self.CreateHatchBrush(fnStyle, clrref); end
    attach_function 'CreateHatchBrush', [HatchStyle, :colorref], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpatternbrush
    # HBRUSH CreatePatternBrush( _In_  HBITMAP hbmp )
    def self.CreatePatternBrush(hbmp); end
    attach_function 'CreatePatternBrush', [:hbitmap], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createsolidbrush
    # HBRUSH CreateSolidBrush( _In_  COLORREF crColor )
    def self.CreateSolidBrush(crColor); end
    attach_function 'CreateSolidBrush', [:colorref], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createsolidbrush
    # BOOL GetBrushOrgEx( _In_   HDC hdc, _Out_  LPPOINT lppt )
    def self.GetBrushOrgEx(hdc, lppt); end
    attach_function 'GetBrushOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-patblt
    # BOOL PatBlt(_In_ HDC hdc, _In_ int nXLeft, _In_ int nYLeft, _In_ int nWidth, _In_ int nHeight, _In_ DWORD dwRop)
    def self.PatBlt(hdc, nXLeft, nYLeft, nWidth, nHeight, dwRop); end
    attach_function 'PatBlt', [:hdc, :int, :int, :int, :int, BitBltFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setbrushorgex
    # Same as FixBrushOrgEx (win 95)
    # BOOL SetBrushOrgEx( _In_   HDC hdc, _In_   int nXOrg, _In_   int nYOrg, _Out_  LPPOINT lppt )
    def self.SetBrushOrgEx(hdc, nXOrg, nYOrg, lppt); end
    attach_function 'SetBrushOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool
  end
end
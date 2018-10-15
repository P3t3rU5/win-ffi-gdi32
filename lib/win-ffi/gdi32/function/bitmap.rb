require 'win-ffi/core/struct/size'
require 'win-ffi/core/struct/point'

require_relative '../enum/bitmap/bit_blt_flag'
require_relative '../enum/bitmap/flood_fill'
require_relative '../enum/bitmap/create_bitmap'
require_relative '../enum/bitmap/gradient_fill'
require_relative '../enum/bitmap/stretch'
require_relative '../enum/dib_color_identifier'

require_relative '../struct/bitmap/rgb_quad'
require_relative '../struct/bitmap'
require_relative '../struct/bitmap/info'
require_relative '../struct/bitmap/info_header'
require_relative '../struct/bitmap/v4_header'
require_relative '../struct/bitmap/v5_header'
require_relative '../struct/bitmap/blend_function'
require_relative '../struct/bitmap/gradient_triangle'
require_relative '../struct/bitmap/tri_vertex'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-bitblt
    # BOOL BitBlt(
    #   _In_  HDC hdcDest,
    #   _In_  int nXDest,
    #   _In_  int nYDest,
    #   _In_  int nWidth,
    #   _In_  int nHeight,
    #   _In_  HDC hdcSrc,
    #   _In_  int nXSrc,
    #   _In_  int nYSrc,
    #   _In_  DWORD dwRop )
    def self.BitBlt(hdcDest, nXDest, nYDest, nWidth, nHeight, hdcSrc, nXSrc, nYSrc, dwRop) end
    attach_function 'BitBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, BitBltFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createbitmap
    # HBITMAP CreateBitmap(
    #   _In_  int nWidth,
    #   _In_  int nHeight,
    #   _In_  UINT cPlanes,
    #   _In_  UINT cBitsPerPel,
    #   _In_  const VOID *lpvBits )
    def self.CreateBitmap(nWidth, nHeight, cPlanes, cBitsPerPel, lpvBits) end
    attach_function 'CreateBitmap', [:int, :int, :uint, :uint, :pointer], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createbitmapindirect
    # HBITMAP CreateBitmapIndirect( _In_  const BITMAP *lpbm )
    def self.CreateBitmapIndirect(lpbm) end
    attach_function 'CreateBitmapIndirect', [BITMAP.ptr], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createcompatiblebitmap
    # HBITMAP CreateCompatibleBitmap( _In_  HDC hdc, _In_  int nWidth, _In_  int nHeight )
    def self.CreateCompatibleBitmap(hdc, nWidth, nHeight) end
    attach_function 'CreateCompatibleBitmap', [:hdc, :int, :int], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdibitmap
    # HBITMAP CreateDIBitmap(
    #   _In_  HDC hdc,
    #   _In_  const BITMAPINFOHEADER *lpbmih,
    #   _In_  DWORD fdwInit,
    #   _In_  const VOID *lpbInit,
    #   _In_  const BITMAPINFO *lpbmi,
    #   _In_  UINT fuUsage )
    def self.CreateDIBitmap(hdc, lpbmih, fdwInit, lpbInit, lpbmi, fuUsage) end
    attach_function 'CreateDIBitmap',
                    [:hdc, :pointer, CreateBitmap, :pointer, BITMAPINFO.ptr, DibColorIdentifier], :hbitmap


    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdibsection
    # HBITMAP CreateDIBSection(
    #   _In_   HDC hdc,
    #   _In_   const BITMAPINFO *pbmi,
    #   _In_   UINT iUsage,
    #   _Out_  VOID **ppvBits,
    #   _In_   HANDLE hSection,
    #   _In_   DWORD dwOffset )
    def self.CreateDIBSection(hdc, pbmi, iUsage, ppvBits, hSection, dwOffset) end
    attach_function 'CreateDIBSection',
                    [:hdc, BITMAPINFO.ptr, DibColorIdentifier, :pointer, :handle, :dword], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-creatediscardablebitmap
    # [This function is provided only for compatibility with 16-bit versions of Windows. Applications should use the CreateCompatibleBitmap function.]
    # HBITMAP CreateDiscardableBitmap( _In_  HDC hdc, _In_  int nWidth, _In_  int nHeight )
    def self.CreateDiscardableBitmap(hdc, nWidth, nHeight) end
    attach_function 'CreateDiscardableBitmap', [:hdc, :int, :int], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extfloodfill
    # BOOL ExtFloodFill(
    #   _In_  HDC hdc,
    #   _In_  int nXStart,
    #   _In_  int nYStart,
    #   _In_  COLORREF crColor,
    #   _In_  UINT fuFillType )
    def self.ExtFloodFill(hdc, nXStart, nYStart, crColor, fuFillType) end
    attach_function 'ExtFloodFill', [:hdc, :int, :int, :colorref, FloodFill], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-floodfill
    # BOOL FloodFill( _In_  HDC hdc, _In_  int nXStart, _In_  int nYStart, _In_  COLORREF crFill )
    def self.FloodFill(hdc, nXStart, nYStart, crFill) end
    attach_function 'FloodFill', [:hdc, :int, :int, :colorref], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdialphablend
    # BOOL GdiAlphaBlend(
    #   _In_  HDC hdcDest,
    #   _In_  int xoriginDest,
    #   _In_  int yoriginDest,
    #   _In_  int wDest,
    #   _In_  int hDest,
    #   _In_  HDC hdcSrc,
    #   _In_  int xoriginSrc,
    #   _In_  int yoriginSrc,
    #   _In_  int wSrc,
    #   _In_  int hSrc,
    #   _In_  BLENDFUNCTION ftn )
    def self.GdiAlphaBlend(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc, hSrc,
        ftn) end
    attach_function 'GdiAlphaBlend',
                    [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, BLENDFUNCTION.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdigradientfill
    # BOOL GdiGradientFill(
    #   _In_  HDC hdc,
    #   _In_  PTRIVERTEX pVertex,
    #   _In_  ULONG dwNumVertex,
    #   _In_  PVOID pMesh,
    #   _In_  ULONG dwNumMesh,
    #   _In_  ULONG dwMode )
    def self.GdiGradientFill(hdc, pVertex, dwNumVertex, pMesh, dwNumMesh, dwMode) end
    attach_function 'GdiGradientFill', [:hdc, :pointer, :ulong, :pointer, :ulong, GradientFill], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gditransparentblt
    # BOOL GdiTransparentBlt(
    #   _In_  HDC hdcDest,
    #   _In_  int xoriginDest,
    #   _In_  int yoriginDest,
    #   _In_  int wDest,
    #   _In_  int hDest,
    #   _In_  HDC hdcSrc,
    #   _In_  int xoriginSrc,
    #   _In_  int yoriginSrc,
    #   _In_  int wSrc,
    #   _In_  int hSrc,
    #   _In_  UINT crTransparent )
    def self.GdiTransparentBlt(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc,
        hSrc, crTransparent) end
    attach_function 'GdiTransparentBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getbitmapbits
    # LONG GetBitmapBits( _In_   HBITMAP hbmp, _In_   LONG cbBuffer, _Out_  LPVOID lpvBits )
    def self.GetBitmapBits(hbmp, cbBuffer, lpvBits) end
    attach_function 'GetBitmapBits', [:hbitmap, :long, :pointer], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getbitmapdimensionex
    # BOOL GetBitmapDimensionEx( _In_   HBITMAP hBitmap, _Out_  LPSIZE lpDimension )
    def self.GetBitmapDimensionEx(hBitmap, lpDimension) end
    attach_function 'GetBitmapDimensionEx', [:hbitmap, SIZE.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdibcolortable
    # UINT GetDIBColorTable( _In_   HDC hdc, _In_   UINT uStartIndex, _In_   UINT cEntries, _Out_  RGBQUAD *pColors )
    def self.GetDIBColorTable(hdc, uStartIndex, cEntries, pColors) end
    attach_function 'GetDIBColorTable', [:hdc, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdibits
    # int GetDIBits(
    #   _In_     HDC hdc,
    #   _In_     HBITMAP hbmp,
    #   _In_     UINT uStartScan,
    #   _In_     UINT cScanLines,
    #   _Out_    LPVOID lpvBits,
    #   _Inout_  LPBITMAPINFO lpbi,
    #   _In_     UINT uUsage )
    def self.GetDIBits(hdc, hbmp, uStartScan, cScanLines, lpvBits, lpbi, uUsage) end
    attach_function 'GetDIBits', [:hdc, :hbitmap, :uint, :uint, :pointer, BITMAPINFO.ptr, DibColorIdentifier], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpixel
    # COLORREF GetPixel( _In_  HDC hdc, _In_  int nXPos, _In_  int nYPos )
    def self.GetPixel(hdc, nXPos, nYPos) end
    attach_function 'GetPixel', [:hdc, :int, :int], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getstretchbltmode
    # int GetStretchBltMode( _In_  HDC hdc )
    def self.GetStretchBltMode(hdc) end
    attach_function 'GetStretchBltMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-maskblt
    # BOOL MaskBlt(
    #   _In_  HDC hdcDest,
    #   _In_  int nXDest,
    #   _In_  int nYDest,
    #   _In_  int nWidth,
    #   _In_  int nHeight,
    #   _In_  HDC hdcSrc,
    #   _In_  int nXSrc,
    #   _In_  int nYSrc,
    #   _In_  HBITMAP hbmMask,
    #   _In_  int xMask,
    #   _In_  int yMask,
    #   _In_  DWORD dwRop )
    def self.MaskBlt(hdcDest, nXDest, nYDest, nWidth, nHeight, hdcSrc, nXSrc, nYSrc, hbmMask, xMask, yMask, dwRop) end
    attach_function 'MaskBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :hbitmap, :int, :int, BitBltFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-plgblt
    # BOOL PlgBlt(
    #   _In_  HDC hdcDest,
    #   _In_  const POINT *lpPoint,
    #   _In_  HDC hdcSrc,
    #   _In_  int nXSrc,
    #   _In_  int nYSrc,
    #   _In_  int nWidth,
    #   _In_  int nHeight,
    #   _In_  HBITMAP hbmMask,
    #   _In_  int xMask,
    #   _In_  int yMask )
    def self.PlgBlt(hdcDest, lpPoint, hdcSrc, nXSrc, nYSrc, nWidth, nHeight, hbmMask, xMask, yMask) end
    attach_function 'PlgBlt', [:hdc, :pointer, :hdc, :int, :int, :int, :int, :hbitmap, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setbitmapbits
    # LONG SetBitmapBits( _In_  HBITMAP hbmp, _In_  DWORD cBytes, _In_  const VOID *lpBits )
    def self.SetBitmapBits(hbmp, cBytes, lpBits) end
    attach_function 'SetBitmapBits', [:hbitmap, :dword, :pointer], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setbitmapdimensionex
    # BOOL SetBitmapDimensionEx( _In_   HBITMAP hBitmap, _In_   int nWidth, _In_   int nHeight, _Out_  LPSIZE lpSize )
    def self.SetBitmapDimensionEx(hBitmap, nWidth, nHeight, lpSize) end
    attach_function 'SetBitmapDimensionEx', [:hbitmap, :int, :int, SIZE.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdibcolortable
    # UINT SetDIBColorTable( _In_  HDC hdc, _In_  UINT uStartIndex, _In_  UINT cEntries, _In_  const RGBQUAD *pColors )
    def self.SetDIBColorTable(hdc, uStartIndex, cEntries, pColors) end
    attach_function 'SetDIBColorTable', [:hdc, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdibits
    # int SetDIBits(
    #   _In_  HDC hdc,
    #   _In_  HBITMAP hbmp,
    #   _In_  UINT uStartScan,
    #   _In_  UINT cScanLines,
    #   _In_  const VOID *lpvBits,
    #   _In_  const BITMAPINFO *lpbmi,
    #   _In_  UINT fuColorUse )
    def self.SetDIBits(hdc, hbmp, uStartScan, cScanLines, lpvBits, lpbmi, fuColorUse) end
    attach_function 'SetDIBits', [:hdc, :hbitmap, :uint, :uint, :pointer, BITMAPINFO.ptr, DibColorIdentifier], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdibitstodevice
    # int SetDIBitsToDevice(
    #   _In_  HDC hdc,
    #   _In_  int XDest,
    #   _In_  int YDest,
    #   _In_  DWORD dwWidth,
    #   _In_  DWORD dwHeight,
    #   _In_  int XSrc,
    #   _In_  int YSrc,
    #   _In_  UINT uStartScan,
    #   _In_  UINT cScanLines,
    #   _In_  const VOID *lpvBits,
    #   _In_  const BITMAPINFO *lpbmi,
    #   _In_  UINT fuColorUse )
    def self.SetDIBitsToDevice(hdc, xDest, yDest, dwWidth, dwHeight, xSrc, ySrc, uStartScan, cScanLines, lpvBits, lpbmi,
        fuColorUse) end
    attach_function 'SetDIBitsToDevice',
                    [:hdc, :int, :int, :dword, :dword, :int, :int, :uint, :uint, :pointer, BITMAPINFO.ptr,
                     DibColorIdentifier], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpixel
    # COLORREF SetPixel( _In_  HDC hdc, _In_  int X, _In_  int Y, _In_  COLORREF crColor )
    def self.SetPixel(hdc, x, y, crColor) end
    attach_function 'SetPixel', [:hdc, :int, :int, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpixelv
    # BOOL SetPixelV( _In_  HDC hdc, _In_  int X, _In_  int Y, _In_  COLORREF crColor )
    def self.SetPixelV(hdc, x, y, crColor) end
    attach_function 'SetPixelV', [:hdc, :int, :int, :colorref], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setstretchbltmode
    # int SetStretchBltMode( _In_  HDC hdc, _In_  int iStretchMode )
    def self.SetStretchBltMode(hdc, iStretchMode) end
    attach_function 'SetStretchBltMode', [:hdc, Stretch], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-stretchblt
    # BOOL StretchBlt(
    #   _In_  HDC hdcDest,
    #   _In_  int nXOriginDest,
    #   _In_  int nYOriginDest,
    #   _In_  int nWidthDest,
    #   _In_  int nHeightDest,
    #   _In_  HDC hdcSrc,
    #   _In_  int nXOriginSrc,
    #   _In_  int nYOriginSrc,
    #   _In_  int nWidthSrc,
    #   _In_  int nHeightSrc,
    #   _In_  DWORD dwRop )
    def self.StretchBlt(hdcDest, nXOriginDest, nYOriginDest, nWidthDest, nHeightDest, hdcSrc, nXOriginSrc, nYOriginSrc,
        nWidthSrc, nHeightSrc, dwRop) end
    attach_function 'StretchBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, BitBltFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-stretchdibits
    # int StretchDIBits(
    #   _In_  HDC hdc,
    #   _In_  int XDest,
    #   _In_  int YDest,
    #   _In_  int nDestWidth,
    #   _In_  int nDestHeight,
    #   _In_  int XSrc,
    #   _In_  int YSrc,
    #   _In_  int nSrcWidth,
    #   _In_  int nSrcHeight,
    #   _In_  const VOID *lpBits,
    #   _In_  const BITMAPINFO *lpBitsInfo,
    #   _In_  UINT iUsage,
    #   _In_  DWORD dwRop )
    def self.StretchDIBits(hdc, xDest, yDest, nDestWidth, nDestHeight, xSrc, ySrc, nSrcWidth, nSrcHeight, lpBits,
        lpBitsInfo, iUsage, dwRop) end
    attach_function 'StretchDIBits', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int, :pointer, BITMAPINFO.ptr, DibColorIdentifier, :dword], :int
  end
end
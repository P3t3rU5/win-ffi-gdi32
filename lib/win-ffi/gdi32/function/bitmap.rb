require 'win-ffi/gdi32'

require 'win-ffi/gdi32/enum/bitmap/bit_blt_flag'
require 'win-ffi/gdi32/enum/bitmap/flood_fill'
require 'win-ffi/gdi32/enum/bitmap/create_bitmap'
require 'win-ffi/gdi32/enum/bitmap/gradient_fill'
require 'win-ffi/gdi32/enum/bitmap/stretch'
require 'win-ffi/gdi32/enum/dib_color_identifier'

require 'win-ffi/core/struct/size'
require 'win-ffi/core/struct/point'


require 'win-ffi/gdi32/struct/bitmap/rgb_quad'
require 'win-ffi/gdi32/struct/bitmap/bitmap'
require 'win-ffi/gdi32/struct/bitmap/bitmap_info'
require 'win-ffi/gdi32/struct/bitmap/bitmap_info_header'
require 'win-ffi/gdi32/struct/bitmap/bitmap_v4_header'
require 'win-ffi/gdi32/struct/bitmap/bitmap_v5_header'
require 'win-ffi/gdi32/struct/bitmap/blend_function'
require 'win-ffi/gdi32/struct/bitmap/gradient_triangle'
require 'win-ffi/gdi32/struct/bitmap/tri_vertex'


module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183370(v=vs.85).aspx
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
    attach_function 'BitBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, BitBltFlag], :bool

    # https://msdn.microsoft.com/en-us/library/dd183485(v=vs.85).aspx
    # HBITMAP CreateBitmap(
    #   _In_  int nWidth,
    #   _In_  int nHeight,
    #   _In_  UINT cPlanes,
    #   _In_  UINT cBitsPerPel,
    #   _In_  const VOID *lpvBits )
    attach_function 'CreateBitmap', [:int, :int, :uint, :uint, :pointer], :hbitmap

    # https://msdn.microsoft.com/en-us/library/dd183488(v=vs.85).aspx
    # HBITMAP CreateBitmapIndirect( _In_  const BITMAP *lpbm )
    attach_function 'CreateBitmapIndirect', [BITMAP.ptr], :hbitmap

    # HBITMAP CreateCompatibleBitmap(
    #   _In_  HDC hdc,
    #   _In_  int nWidth,
    #   _In_  int nHeight )
    attach_function 'CreateCompatibleBitmap', [:hdc, :int, :int], :hbitmap

    # https://msdn.microsoft.com/en-us/library/dd183491(v=vs.85).aspx
    # HBITMAP CreateDIBitmap(
    #   _In_  HDC hdc,
    #   _In_  const BITMAPINFOHEADER *lpbmih,
    #   _In_  DWORD fdwInit,
    #   _In_  const VOID *lpbInit,
    #   _In_  const BITMAPINFO *lpbmi,
    #   _In_  UINT fuUsage )
    attach_function 'CreateDIBitmap',
                    [:hdc, :pointer, CreateBitmap, :pointer, BITMAPINFO.ptr, DibColorIdentifier], :hbitmap

    # https://msdn.microsoft.com/en-us/library/dd183494(v=vs.85).aspx
    # HBITMAP CreateDIBSection(
    #   _In_   HDC hdc,
    #   _In_   const BITMAPINFO *pbmi,
    #   _In_   UINT iUsage,
    #   _Out_  VOID **ppvBits,
    #   _In_   HANDLE hSection,
    #   _In_   DWORD dwOffset )
    attach_function 'CreateDIBSection', [:hdc, BITMAPINFO.ptr, DibColorIdentifier, :pointer, :handle, :dword], :hbitmap

    # https://msdn.microsoft.com/en-us/library/dd183495(v=vs.85).aspx
    # [This function is provided only for compatibility with 16-bit versions of Windows. Applications should use the CreateCompatibleBitmap function.]
    # HBITMAP CreateDiscardableBitmap(
    #   _In_  HDC hdc,
    #   _In_  int nWidth,
    #   _In_  int nHeight )
    attach_function 'CreateDiscardableBitmap', [:hdc, :int, :int], :hbitmap

    # https://msdn.microsoft.com/en-us/library/dd162709(v=vs.85).aspx
    # BOOL ExtFloodFill(
    #   _In_  HDC hdc,
    #   _In_  int nXStart,
    #   _In_  int nYStart,
    #   _In_  COLORREF crColor,
    #   _In_  UINT fuFillType )
    attach_function 'ExtFloodFill', [:hdc, :int, :int, :colorref, FloodFill], :bool

    # https://msdn.microsoft.com/en-us/library/dd162726(v=vs.85).aspx
    # BOOL FloodFill(
    #   _In_  HDC hdc,
    #   _In_  int nXStart,
    #   _In_  int nYStart,
    #   _In_  COLORREF crFill )
    attach_function 'FloodFill', [:hdc, :int, :int, :colorref], :bool

    # https://msdn.microsoft.com/en-us/library/dd373584(v=vs.85).aspx
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
    attach_function 'GdiAlphaBlend',
                    [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, BLENDFUNCTION.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/dd373585(v=vs.85).aspx
    # BOOL GdiGradientFill(
    #   _In_  HDC hdc,
    #   _In_  PTRIVERTEX pVertex,
    #   _In_  ULONG dwNumVertex,
    #   _In_  PVOID pMesh,
    #   _In_  ULONG dwNumMesh,
    #   _In_  ULONG dwMode )
    attach_function 'GdiGradientFill', [:hdc, :pointer, :ulong, :pointer, :ulong, GradientFill], :bool

    # https://msdn.microsoft.com/en-us/library/dd373586(v=vs.85).aspx
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
    attach_function 'GdiTransparentBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, :uint], :bool

    # https://msdn.microsoft.com/en-us/library/dd144850(v=vs.85).aspx
    # LONG GetBitmapBits(
    #   _In_   HBITMAP hbmp,
    #   _In_   LONG cbBuffer,
    #   _Out_  LPVOID lpvBits )
    attach_function 'GetBitmapBits', [:hbitmap, :long, :pointer], :long

    # https://msdn.microsoft.com/en-us/library/dd144851(v=vs.85).aspx
    # BOOL GetBitmapDimensionEx(
    #   _In_   HBITMAP hBitmap,
    #   _Out_  LPSIZE lpDimension )
    attach_function 'GetBitmapDimensionEx', [:hbitmap, SIZE.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/dd162938(v=vs.85).aspx
    # UINT GetDIBColorTable(
    #   _In_   HDC hdc,
    #   _In_   UINT uStartIndex,
    #   _In_   UINT cEntries,
    #   _Out_  RGBQUAD *pColors )
    attach_function 'GetDIBColorTable', [:hdc, :uint, :uint, :pointer], :uint

    # https://msdn.microsoft.com/en-us/library/dd144879(v=vs.85).aspx
    # int GetDIBits(
    #   _In_     HDC hdc,
    #   _In_     HBITMAP hbmp,
    #   _In_     UINT uStartScan,
    #   _In_     UINT cScanLines,
    #   _Out_    LPVOID lpvBits,
    #   _Inout_  LPBITMAPINFO lpbi,
    #   _In_     UINT uUsage )
    attach_function 'GetDIBits', [:hdc, :hbitmap, :uint, :uint, :pointer, BITMAPINFO.ptr, DibColorIdentifier], :int

    # https://msdn.microsoft.com/en-us/library/dd144909(v=vs.85).aspx
    # COLORREF GetPixel(
    #   _In_  HDC hdc,
    #   _In_  int nXPos,
    #   _In_  int nYPos )
    attach_function 'GetPixel', [:hdc, :int, :int], :colorref

    # https://msdn.microsoft.com/en-us/library/dd144926(v=vs.85).aspx
    # int GetStretchBltMode( _In_  HDC hdc )
    attach_function 'GetStretchBltMode', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/dd145047(v=vs.85).aspx
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
    attach_function 'MaskBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :hbitmap, :int, :int, BitBltFlag], :bool

    # https://msdn.microsoft.com/en-us/library/dd162804(v=vs.85).aspx
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
    attach_function 'PlgBlt', [:hdc, :pointer, :hdc, :int, :int, :int, :int, :hbitmap, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162962(v=vs.85).aspx
    # LONG SetBitmapBits(
    #   _In_  HBITMAP hbmp,
    #   _In_  DWORD cBytes,
    #   _In_  const VOID *lpBits )
    attach_function 'SetBitmapBits', [:hbitmap, :dword, :pointer], :long

    # https://msdn.microsoft.com/en-us/library/dd162963(v=vs.85).aspx
    # BOOL SetBitmapDimensionEx(
    #   _In_   HBITMAP hBitmap,
    #   _In_   int nWidth,
    #   _In_   int nHeight,
    #   _Out_  LPSIZE lpSize )
    attach_function 'SetBitmapDimensionEx', [:hbitmap, :int, :int, SIZE.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/dd162972(v=vs.85).aspx
    # UINT SetDIBColorTable(
    #   _In_  HDC hdc,
    #   _In_  UINT uStartIndex,
    #   _In_  UINT cEntries,
    #   _In_  const RGBQUAD *pColors )
    attach_function 'SetDIBColorTable', [:hdc, :uint, :uint, :pointer], :uint

    # https://msdn.microsoft.com/en-us/library/dd162973(v=vs.85).aspx
    # int SetDIBits(
    #   _In_  HDC hdc,
    #   _In_  HBITMAP hbmp,
    #   _In_  UINT uStartScan,
    #   _In_  UINT cScanLines,
    #   _In_  const VOID *lpvBits,
    #   _In_  const BITMAPINFO *lpbmi,
    #   _In_  UINT fuColorUse )
    attach_function 'SetDIBits', [:hdc, :hbitmap, :uint, :uint, :pointer, BITMAPINFO.ptr, DibColorIdentifier], :int

    # https://msdn.microsoft.com/en-us/library/dd162974(v=vs.85).aspx
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
    attach_function 'SetDIBitsToDevice',
                    [:hdc, :int, :int, :dword, :dword, :int, :int, :uint, :uint, :pointer, BITMAPINFO.ptr,
                     DibColorIdentifier], :int

    # https://msdn.microsoft.com/en-us/library/dd145078(v=vs.85).aspx
    # COLORREF SetPixel(
    #   _In_  HDC hdc,
    #   _In_  int X,
    #   _In_  int Y,
    #   _In_  COLORREF crColor )
    attach_function 'SetPixel', [:hdc, :int, :int, :colorref], :colorref

    # https://msdn.microsoft.com/en-us/library/dd145079(v=vs.85).aspx
    # BOOL SetPixelV(
    #   _In_  HDC hdc,
    #   _In_  int X,
    #   _In_  int Y,
    #   _In_  COLORREF crColor )
    attach_function 'SetPixelV', [:hdc, :int, :int, :colorref], :bool

    # https://msdn.microsoft.com/en-us/library/dd145089(v=vs.85).aspx
    # int SetStretchBltMode(
    #   _In_  HDC hdc,
    #   _In_  int iStretchMode )
    attach_function 'SetStretchBltMode', [:hdc, Stretch], :int

    # https://msdn.microsoft.com/en-us/library/dd145120(v=vs.85).aspx
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
    attach_function 'StretchBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, BitBltFlag], :bool

    # https://msdn.microsoft.com/en-us/library/dd145121(v=vs.85).aspx
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
    attach_function 'StretchDIBits', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int, :pointer, BITMAPINFO.ptr, DibColorIdentifier, :dword], :int
  end
end
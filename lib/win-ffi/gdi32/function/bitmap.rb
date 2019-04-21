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
    # @param [FFI::Pointer] hdcDest
    # @param [Integer] nXDest
    # @param [Integer] nYDest
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [FFI::Pointer] hdcSrc
    # @param [Integer] nXSrc
    # @param [Integer] nYSrc
    # @param [Integer] dwRop
    # @return [true, false]
    def self.BitBlt(hdcDest, nXDest, nYDest, nWidth, nHeight, hdcSrc, nXSrc, nYSrc, dwRop) end
    attach_function 'BitBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, BitBltFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createbitmap
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [Integer] cPlanes
    # @param [Integer] cBitsPerPel
    # @param [FFI::Pointer] lpvBits
    def self.CreateBitmap(nWidth, nHeight, cPlanes, cBitsPerPel, lpvBits) end
    attach_function 'CreateBitmap', [:int, :int, :uint, :uint, :pointer], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createbitmapindirect
    # @param [FFI::Pointer] lpbm
    # @return [FFI::Pointer]
    def self.CreateBitmapIndirect(lpbm) end
    attach_function 'CreateBitmapIndirect', [BITMAP.ptr(:in)], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createcompatiblebitmap
    # @param [FFI::Pointer] hdc
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @return [FFI::Pointer]
    def self.CreateCompatibleBitmap(hdc, nWidth, nHeight) end
    attach_function 'CreateCompatibleBitmap', [:hdc, :int, :int], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdibitmap
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpbmih
    # @param [Integer] fdwInit
    # @param [FFI::Pointer] lpbInit
    # @param [FFI::Pointer] lpbmi
    # @param [Integer] fuUsage
    # @return [FFI::Pointer]
    def self.CreateDIBitmap(hdc, lpbmih, fdwInit, lpbInit, lpbmi, fuUsage) end
    attach_function 'CreateDIBitmap',
                    [:hdc, :pointer, CreateBitmap, :pointer, BITMAPINFO.ptr(:in), DibColorIdentifier], :hbitmap


    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdibsection
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] pbmi
    # @param [Integer] iUsage
    # @param [FFI::Pointer] ppvBits
    # @param [FFI::Pointer] hSection
    # @param [Integer] dwOffset
    # @return [FFI::Pointer]
    def self.CreateDIBSection(hdc, pbmi, iUsage, ppvBits, hSection, dwOffset) end
    attach_function 'CreateDIBSection',
                    [:hdc, BITMAPINFO.ptr(:in), DibColorIdentifier, :pointer, :handle, :dword], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-creatediscardablebitmap
    # [This function is provided only for compatibility with 16-bit versions of Windows. Applications should use the CreateCompatibleBitmap function.]
    # @param [FFI::Pointer] hdc
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @return [FFI::Pointer]
    def self.CreateDiscardableBitmap(hdc, nWidth, nHeight) end
    attach_function 'CreateDiscardableBitmap', [:hdc, :int, :int], :hbitmap

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extfloodfill
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXStart
    # @param [Integer] nYStart
    # @param [Integer] crColor
    # @param [Integer] fuFillType
    # @return [true, false]
    def self.ExtFloodFill(hdc, nXStart, nYStart, crColor, fuFillType) end
    attach_function 'ExtFloodFill', [:hdc, :int, :int, :colorref, FloodFill], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-floodfill
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXStart
    # @param [Integer] nYStart
    # @param [Integer] crFill
    # @return [true, false]
    def self.FloodFill(hdc, nXStart, nYStart, crFill) end
    attach_function 'FloodFill', [:hdc, :int, :int, :colorref], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdialphablend
    # @param [FFI::Pointer] hdcDest
    # @param [Integer] xoriginDest
    # @param [Integer] yoriginDest
    # @param [Integer] wDest
    # @param [Integer] hDest
    # @param [Integer] hdcSrc
    # @param [Integer] xoriginSrc
    # @param [Integer] yoriginSrc
    # @param [Integer] wSrc
    # @param [Integer] hSrc
    # @param [FFI::Pointer] ftn
    def self.GdiAlphaBlend(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc, hSrc,
        ftn) end
    attach_function 'GdiAlphaBlend',
                    [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, BLENDFUNCTION.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdigradientfill
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] pVertex
    # @param [Integer] dwNumVertex
    # @param [FFI::Pointer] pMesh
    # @param [Integer] dwNumMesh
    # @param [Integer] dwMode
    # @return [true, false]
    def self.GdiGradientFill(hdc, pVertex, dwNumVertex, pMesh, dwNumMesh, dwMode) end
    attach_function 'GdiGradientFill', [:hdc, :pointer, :ulong, :pointer, :ulong, GradientFill], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gditransparentblt
    # @param [FFI::Pointer] hdcDest
    # @param [Integer] xoriginDest
    # @param [Integer] yoriginDest
    # @param [Integer] wDest
    # @param [Integer] hDest
    # @param [FFI::Pointer] hdcSrc
    # @param [Integer] xoriginSrc
    # @param [Integer] yoriginSrc
    # @param [Integer] wSrc
    # @param [Integer] hSrc
    # @param [Integer] crTransparent
    # @return [true, false]
    def self.GdiTransparentBlt(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc,
        hSrc, crTransparent) end
    attach_function 'GdiTransparentBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getbitmapbits
    # @param [FFI::Pointer] hbmp
    # @param [Integer] cbBuffer
    # @param [FFI::Pointer] lpvBits
    # @return [Integer]
    def self.GetBitmapBits(hbmp, cbBuffer, lpvBits) end
    attach_function 'GetBitmapBits', [:hbitmap, :long, :pointer], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getbitmapdimensionex
    # @param [FFI::Pointer] hBitmap
    # @param [FFI::Pointer] lpDimension
    def self.GetBitmapDimensionEx(hBitmap, lpDimension) end
    attach_function 'GetBitmapDimensionEx', [:hbitmap, SIZE.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdibcolortable
    # @param [FFI::Pointer] hdc
    # @param [Integer] uStartIndex
    # @param [Integer] cEntries
    # @param [FFI::Pointer] pColors
    # @return [Integer]
    def self.GetDIBColorTable(hdc, uStartIndex, cEntries, pColors) end
    attach_function 'GetDIBColorTable', [:hdc, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdibits
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hbmp
    # @param [Integer] uStartScan
    # @param [Integer] cScanLines
    # @param [FFI::Pointer] lpvBits
    # @param [FFI::Pointer] lpbi
    # @param [Integer] uUsage
    # @return [Integer]
    def self.GetDIBits(hdc, hbmp, uStartScan, cScanLines, lpvBits, lpbi, uUsage) end
    attach_function 'GetDIBits', [:hdc, :hbitmap, :uint, :uint, :pointer, BITMAPINFO.ptr, DibColorIdentifier], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpixel
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXPos
    # @param [Integer] nYPos
    # @return [Integer]
    def self.GetPixel(hdc, nXPos, nYPos) end
    attach_function 'GetPixel', [:hdc, :int, :int], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getstretchbltmode
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetStretchBltMode(hdc) end
    attach_function 'GetStretchBltMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-maskblt
    # @param [FFI::Pointer] hdcDest
    # @param [Integer] nXDest
    # @param [Integer] nYDest
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [FFI::Pointer] hdcSrc
    # @param [Integer] nXSrc
    # @param [Integer] nYSrc
    # @param [FFI::Pointer] hbmMask
    # @param [Integer] xMask
    # @param [Integer] yMask
    # @param [Integer] dwRop
    # @return [true, false]
    def self.MaskBlt(hdcDest, nXDest, nYDest, nWidth, nHeight, hdcSrc, nXSrc, nYSrc, hbmMask, xMask, yMask, dwRop) end
    attach_function 'MaskBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :hbitmap, :int, :int, BitBltFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-plgblt
    # @param [FFI::Pointer] hdcDest
    # @param [FFI::Pointer] lpPoint
    # @param [FFI::Pointer] hdcSrc
    # @param [Integer] nXSrc
    # @param [Integer] nYSrc
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [FFI::Pointer] hbmMask
    # @param [Integer] xMask
    # @param [Integer] yMask
    # @return [true, false]
    def self.PlgBlt(hdcDest, lpPoint, hdcSrc, nXSrc, nYSrc, nWidth, nHeight, hbmMask, xMask, yMask) end
    attach_function 'PlgBlt', [:hdc, :pointer, :hdc, :int, :int, :int, :int, :hbitmap, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setbitmapbits
    # @param [FFI::Pointer] hbmp
    # @param [Integer] cBytes
    # @param [FFI::Pointer] lpBits
    # @return [Integer]
    def self.SetBitmapBits(hbmp, cBytes, lpBits) end
    attach_function 'SetBitmapBits', [:hbitmap, :dword, :pointer], :long

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setbitmapdimensionex
    # @param [FFI::Pointer] hBitmap
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.SetBitmapDimensionEx(hBitmap, nWidth, nHeight, lpSize) end
    attach_function 'SetBitmapDimensionEx', [:hbitmap, :int, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdibcolortable
    # @param [FFI::Pointer] hdc
    # @param [Integer] uStartIndex
    # @param [Integer] cEntries
    # @param [FFI::Pointer] pColors
    # @return [Integer]
    def self.SetDIBColorTable(hdc, uStartIndex, cEntries, pColors) end
    attach_function 'SetDIBColorTable', [:hdc, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdibits
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hbmp
    # @param [Integer] uStartScan
    # @param [Integer] cScanLines
    # @param [FFI::Pointer] lpvBits
    # @param [FFI::Pointer] lpbmi
    # @param [Integer] fuColorUse
    # @return [Integer]
    def self.SetDIBits(hdc, hbmp, uStartScan, cScanLines, lpvBits, lpbmi, fuColorUse) end
    attach_function 'SetDIBits', [:hdc, :hbitmap, :uint, :uint, :pointer, BITMAPINFO.ptr(:in), DibColorIdentifier], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdibitstodevice
    # @param [FFI::Pointer] hdc
    # @param [Integer] xDest
    # @param [Integer] yDest
    # @param [Integer] dwWidth
    # @param [Integer] dwHeight
    # @param [Integer] xSrc
    # @param [Integer] ySrc
    # @param [Integer] uStartScan
    # @param [Integer] cScanLines
    # @param [FFI::Pointer] lpvBits
    # @param [FFI::Pointer] lpbmi
    # @param [Integer] fuColorUse
    # @return [Integer]
    def self.SetDIBitsToDevice(hdc, xDest, yDest, dwWidth, dwHeight, xSrc, ySrc, uStartScan, cScanLines, lpvBits, lpbmi,
        fuColorUse) end
    attach_function 'SetDIBitsToDevice',
                    [:hdc, :int, :int, :dword, :dword, :int, :int, :uint, :uint, :pointer, BITMAPINFO.ptr(:in),
                     DibColorIdentifier], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpixel
    # @param [FFI::Pointer] hdc
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] crColor
    # @return [Integer]
    def self.SetPixel(hdc, x, y, crColor) end
    attach_function 'SetPixel', [:hdc, :int, :int, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpixelv
    # @param [FFI::Pointer] hdc
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] crColor
    # @return [true, false]
    def self.SetPixelV(hdc, x, y, crColor) end
    attach_function 'SetPixelV', [:hdc, :int, :int, :colorref], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setstretchbltmode
    # @param [FFI::Pointer] hdc
    # @param [Integer] iStretchMode
    # @return [Integer]
    def self.SetStretchBltMode(hdc, iStretchMode) end
    attach_function 'SetStretchBltMode', [:hdc, Stretch], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-stretchblt
    # @param [FFI::Pointer] hdcDest
    # @param [Integer] nXOriginDest
    # @param [Integer] nYOriginDest
    # @param [Integer] nWidthDest
    # @param [Integer] nHeightDest
    # @param [FFI::Pointer] hdcSrc
    # @param [Integer] nXOriginSrc
    # @param [Integer] nYOriginSrc
    # @param [Integer] nWidthSrc
    # @param [Integer] nHeightSrc
    # @param [Integer] dwRop
    # @return [true, false]
    def self.StretchBlt(hdcDest, nXOriginDest, nYOriginDest, nWidthDest, nHeightDest, hdcSrc, nXOriginSrc, nYOriginSrc,
        nWidthSrc, nHeightSrc, dwRop) end
    attach_function 'StretchBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, BitBltFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-stretchdibits
    # @param [FFI::Pointer] hdc
    # @param [Integer] xDest
    # @param [Integer] yDest
    # @param [Integer] nDestWidth
    # @param [Integer] nDestHeight
    # @param [Integer] xSrc
    # @param [Integer] ySrc
    # @param [Integer] nSrcWidth
    # @param [Integer] nSrcHeight
    # @param [FFI::Pointer] lpBits
    # @param [FFI::Pointer] lpBitsInfo
    # @param [Integer] iUsage
    # @param [Integer] dwRop
    # @return [Integer]
    def self.StretchDIBits(hdc, xDest, yDest, nDestWidth, nDestHeight, xSrc, ySrc, nSrcWidth, nSrcHeight, lpBits,
        lpBitsInfo, iUsage, dwRop) end
    attach_function 'StretchDIBits', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int, :pointer, BITMAPINFO.ptr(:in), DibColorIdentifier, :dword], :int
  end
end
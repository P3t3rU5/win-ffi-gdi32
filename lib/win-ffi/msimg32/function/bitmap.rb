require_relative '../../msimg32'

require_relative '../../gdi32/struct/bitmap/blend_function'
require_relative '../../gdi32/struct/bitmap/tri_vertex'
require_relative '../../gdi32/enum/bitmap/gradient_fill'

module WinFFI
  module Msimg32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-alphablend
    # BOOL AlphaBlend(
    #   _In_ HDC hdcDest,
    #   _In_ int xoriginDest,
    #   _In_ int yoriginDest,
    #   _In_ int wDest,
    #   _In_ int hDest,
    #   _In_ HDC hdcSrc,
    #   _In_ int xoriginSrc,
    #   _In_ int yoriginSrc,
    #   _In_ int wSrc,
    #   _In_ int hSrc,
    #   _In_ BLENDFUNCTION ftn)
    def self.AlphaBlend(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc, hSrc,
        ftn) end
    attach_function 'AlphaBlend', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, Gdi32::BLENDFUNCTION.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gradientfill
    # BOOL GradientFill(
    #   _In_ HDC        hdc,
    #   _In_ PTRIVERTEX pVertex,
    #   _In_ ULONG      nVertex,
    #   _In_ PVOID      pMesh,
    #   _In_ ULONG      nMesh,
    #   _In_ ULONG      ulMode)
    def self.GradientFill(hdc, pVertex, nVertex, pMesh, nMesh, ulMode) end
    attach_function 'GradientFill', [:hdc, Gdi32::TRIVERTEX.ptr, :ulong, :pointer, :ulong, Gdi32::GradientFill], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-transparentblt
    # BOOL TransparentBlt(
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
    def self.TransparentBlt(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc, hSrc,
        crTransparent) end
    attach_function 'TransparentBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, :uint], :bool
  end
end
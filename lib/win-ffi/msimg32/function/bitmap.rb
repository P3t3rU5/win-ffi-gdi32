require 'win-ffi/msimg32'

require 'win-ffi/gdi32/struct/bitmap/blend_function'
require 'win-ffi/gdi32/struct/bitmap/tri_vertex'
require 'win-ffi/gdi32/enum/bitmap/gradient_fill'

module WinFFI
  module Msimg32
    # https://msdn.microsoft.com/en-us/library/dd183351(v=vs.85).aspx
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
    attach_function 'AlphaBlend', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, Gdi32::BLENDFUNCTION.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/dd144957(v=vs.85).aspx
    # BOOL GradientFill(
    #   _In_ HDC        hdc,
    #   _In_ PTRIVERTEX pVertex,
    #   _In_ ULONG      nVertex,
    #   _In_ PVOID      pMesh,
    #   _In_ ULONG      nMesh,
    #   _In_ ULONG      ulMode)
    attach_function 'GradientFill', [:hdc, Gdi32::TRIVERTEX.ptr, :ulong, :pointer, :ulong, Gdi32::GradientFill], :bool

    # https://msdn.microsoft.com/en-us/library/dd145141(v=vs.85).aspx?f=255&mspperror=-2147217396
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
    attach_function 'TransparentBlt', [:hdc, :int, :int, :int, :int, :hdc, :int, :int, :int, :int, :uint], :bool
  end
end
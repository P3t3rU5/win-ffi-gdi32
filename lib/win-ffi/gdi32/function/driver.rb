require 'win-ffi/gdi32'

require 'win-ffi/gdi32/enum/hook_flag'

require 'win-ffi/gdi32/typedef/hsemaphore'

require 'win-ffi/gdi32/struct/brush/brush_obj'
require 'win-ffi/gdi32/struct/print/surf_obj'
require 'win-ffi/gdi32/struct/bitmap/blend_obj'
require 'win-ffi/gdi32/struct/clipping/clip_obj'
require 'win-ffi/gdi32/struct/x_late_obj'
require 'win-ffi/gdi32/struct/brush/brush_obj'
require 'win-ffi/gdi32/struct/metafile/pointl'

module WinFFI
  module Gdi32
    # BRUSHOBJ callbacks
    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff538262%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # HANDLE BRUSHOBJ_hGetColorTransform(BRUSHOBJ *pbo)
    attach_function 'BRUSHOBJ_hGetColorTransform', [BRUSHOBJ.ptr], :handle

    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff538263%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # PVOID BRUSHOBJ_pvAllocRbrush(BRUSHOBJ *pbo, ULONG    cj)
    attach_function 'BRUSHOBJ_pvAllocRbrush', [BRUSHOBJ.ptr, :ulong], :pointer

    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff538264(v=vs.85).aspx
    # PVOID BRUSHOBJ_pvGetRbrush(BRUSHOBJ *pbo)
    attach_function 'BRUSHOBJ_pvGetRbrush', [BRUSHOBJ.ptr], :ulong

    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff538265(v=vs.85).aspx
    # ULONG BRUSHOBJ_ulGetBrushColor(BRUSHOBJ *pbo)
    attach_function 'BRUSHOBJ_ulGetBrushColor', [BRUSHOBJ.ptr], :ulong

    # SURFOBJ callbacks
    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff564174%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # VOID EngAcquireSemaphore(_In_ HSEMAPHORE hsem)
    attach_function 'EngAcquireSemaphore', [:hsemaphore], :void

    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff564182%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # BOOL EngAlphaBlend(
    #   SURFOBJ  *psoDest,
    #   SURFOBJ  *psoSrc,
    #   CLIPOBJ  *pco,
    #   XLATEOBJ *pxlo,
    #   RECTL    *prclDest,
    #   RECTL    *prclSrc,
    #   BLENDOBJ *pBlendObj)
    attach_function 'EngAlphaBlend', [SURFOBJ.ptr, SURFOBJ.ptr, CLIPOBJ.ptr, XLATEOBJ.ptr, RECTL.ptr, RECTL.ptr, BLENDOBJ.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff564183(v=vs.85).aspx
    # BOOL EngAssociateSurface(
    #   HSURF hsurf,
    #   HDEV  hdev,
    #   FLONG flHooks)
    attach_function 'EngAssociateSurface', [:hsurf, :hdev, HookFlag], :bool

    typedef :ulong, :rop4

    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff564185(v=vs.85).aspx
    # BOOL EngBitBlt(
    #   SURFOBJ  *psoTrg,
    #   SURFOBJ  *psoSrc,
    #   SURFOBJ  *psoMask,
    #   CLIPOBJ  *pco,
    #   XLATEOBJ *pxlo,
    #   RECTL    *prclTrg,
    #   POINTL   *pptlSrc,
    #   POINTL   *pptlMask,
    #   BRUSHOBJ *pbo,
    #   POINTL   *pptlBrush,
    #   _In_ ROP4     rop4)
    attach_function 'EngBitBlt',
                    [SURFOBJ.ptr, SURFOBJ.ptr, SURFOBJ.ptr, CLIPOBJ.ptr, XLATEOBJ.ptr, RECTL.ptr, POINTL.ptr,
                     POINTL.ptr, BRUSHOBJ.ptr, POINTL.ptr, :rop4], :bool

    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff564189(v=vs.85).aspx
    # BOOL EngCheckAbort(SURFOBJ *pso)
    attach_function 'EngCheckAbort', [SURFOBJ.ptr], :bool

    # FD_GLYPHSET* EngComputeGlyphSet(
    #   _In_ INT nCodePage,
    #   _In_ INT nFirstChar,
    #   _In_ INT cChars)
    attach_function 'EngComputeGlyphSet', [:int, :int, :int], :pointer
  end
end
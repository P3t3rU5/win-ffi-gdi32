require 'win-ffi/core/struct/pointl'

require_relative '../enum/hook_flag'

require_relative '../typedef/hsemaphore'

require_relative '../struct/brush/obj'
require_relative '../struct/print/surf_obj'
require_relative '../struct/bitmap/blend_obj'
require_relative '../struct/clipping/clip_obj'
require_relative '../struct/x_late_obj'
require_relative '../struct/brush/obj'

module WinFFI
  module Gdi32
    # BRUSHOBJ callbacks
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-brushobj_hgetcolortransform
    # HANDLE BRUSHOBJ_hGetColorTransform(BRUSHOBJ *pbo)
    def self.BRUSHOBJ_hGetColorTransform(pbo); end
    attach_function 'BRUSHOBJ_hGetColorTransform', [BRUSHOBJ.ptr], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-brushobj_pvallocrbrush
    # PVOID BRUSHOBJ_pvAllocRbrush(BRUSHOBJ *pbo, ULONG    cj)
    def self.BRUSHOBJ_pvAllocRbrush(pbo, cj); end
    attach_function 'BRUSHOBJ_pvAllocRbrush', [BRUSHOBJ.ptr, :ulong], :pointer

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-brushobj_pvallocrbrush
    # PVOID BRUSHOBJ_pvGetRbrush(BRUSHOBJ *pbo)
    def self.BRUSHOBJ_pvGetRbrush(pbo); end
    attach_function 'BRUSHOBJ_pvGetRbrush', [BRUSHOBJ.ptr], :ulong

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-brushobj_ulgetbrushcolor
    # ULONG BRUSHOBJ_ulGetBrushColor(BRUSHOBJ *pbo)
    def self.BRUSHOBJ_ulGetBrushColor(pbo); end
    attach_function 'BRUSHOBJ_ulGetBrushColor', [BRUSHOBJ.ptr], :ulong

    # SURFOBJ callbacks
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engacquiresemaphore
    # VOID EngAcquireSemaphore(_In_ HSEMAPHORE hsem)
    def self.EngAcquireSemaphore(hsem); end
    attach_function 'EngAcquireSemaphore', [:hsemaphore], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engalphablend
    # BOOL EngAlphaBlend(
    #   SURFOBJ  *psoDest,
    #   SURFOBJ  *psoSrc,
    #   CLIPOBJ  *pco,
    #   XLATEOBJ *pxlo,
    #   RECTL    *prclDest,
    #   RECTL    *prclSrc,
    #   BLENDOBJ *pBlendObj)
    def self.EngAlphaBlend(psoDest, psoSrc, pco, pxlo, prclDest, prclSrc, pBlendObj); end
    attach_function 'EngAlphaBlend', [SURFOBJ.ptr, SURFOBJ.ptr, CLIPOBJ.ptr, XLATEOBJ.ptr, RECTL.ptr, RECTL.ptr, BLENDOBJ.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engassociatesurface
    # BOOL EngAssociateSurface( HSURF hsurf, HDEV  hdev, FLONG flHooks)
    def self.EngAssociateSurface(hsurf, hdev, flHooks); end
    attach_function 'EngAssociateSurface', [:hsurf, :hdev, HookFlag], :bool

    typedef :ulong, :rop4

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engbitblt
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
    def self.EngBitBlt(psoTrg, psoSrc, psoMask, pco, pxlo, prclTrg, pptlSrc, pptlMask, pbo, pptlBrush, rop4); end
    attach_function 'EngBitBlt',
                    [SURFOBJ.ptr, SURFOBJ.ptr, SURFOBJ.ptr, CLIPOBJ.ptr, XLATEOBJ.ptr, RECTL.ptr, POINTL.ptr,
                     POINTL.ptr, BRUSHOBJ.ptr, POINTL.ptr, :rop4], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engcheckabort
    # BOOL EngCheckAbort(SURFOBJ *pso)
    def self.EngCheckAbort(pso); end
    attach_function 'EngCheckAbort', [SURFOBJ.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engcomputeglyphset
    # FD_GLYPHSET* EngComputeGlyphSet( _In_ INT nCodePage, _In_ INT nFirstChar, _In_ INT cChars)
    def self.EngComputeGlyphSet(nCodePage, nFirstChar, cChars); end
    attach_function 'EngComputeGlyphSet', [:int, :int, :int], :pointer
  end
end

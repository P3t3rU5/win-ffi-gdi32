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
    # @param [FFI::Pointer] pbo
    # @return [FFI::Pointer]
    def self.BRUSHOBJ_hGetColorTransform(pbo) end
    attach_function 'BRUSHOBJ_hGetColorTransform', [BRUSHOBJ.ptr], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-brushobj_pvallocrbrush
    # @param [FFI::Pointer] pbo
    # @param [Integer] cj
    # @return [FFI::Pointer]
    def self.BRUSHOBJ_pvAllocRbrush(pbo, cj) end
    attach_function 'BRUSHOBJ_pvAllocRbrush', [BRUSHOBJ.ptr, :ulong], :pointer

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-brushobj_pvallocrbrush
    # @param [FFI::Pointer] pbo
    # @return [Integer]
    def self.BRUSHOBJ_pvGetRbrush(pbo) end
    attach_function 'BRUSHOBJ_pvGetRbrush', [BRUSHOBJ.ptr], :ulong

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-brushobj_ulgetbrushcolor
    # @param [FFI::Pointer] pbo
    # @return [Integer]
    def self.BRUSHOBJ_ulGetBrushColor(pbo) end
    attach_function 'BRUSHOBJ_ulGetBrushColor', [BRUSHOBJ.ptr], :ulong

    # SURFOBJ callbacks
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engacquiresemaphore
    # @param [FFI::Pointer] hsem
    def self.EngAcquireSemaphore(hsem) end
    attach_function 'EngAcquireSemaphore', [:hsemaphore], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engalphablend
    # @param [FFI::Pointer] psoDest
    # @param [FFI::Pointer] psoSrc
    # @param [FFI::Pointer] pco
    # @param [FFI::Pointer] pxlo
    # @param [FFI::Pointer] prclDest
    # @param [FFI::Pointer] prclSrc
    # @param [FFI::Pointer] pBlendObj
    # @return [true, false]
    def self.EngAlphaBlend(psoDest, psoSrc, pco, pxlo, prclDest, prclSrc, pBlendObj) end
    attach_function 'EngAlphaBlend', [SURFOBJ.ptr, SURFOBJ.ptr, CLIPOBJ.ptr, XLATEOBJ.ptr, RECTL.ptr, RECTL.ptr, BLENDOBJ.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engassociatesurface
    # @param [FFI::Pointer] hsurf
    # @param [FFI::Pointer] hdev
    # @param [Integer] flHooks
    # @return [true, false]
    def self.EngAssociateSurface(hsurf, hdev, flHooks) end
    attach_function 'EngAssociateSurface', [:hsurf, :hdev, HookFlag], :bool

    typedef :ulong, :rop4

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engbitblt
    # @param [FFI::Pointer] psoTrg
    # @param [FFI::Pointer] psoSrc
    # @param [FFI::Pointer] psoMask
    # @param [FFI::Pointer] pco
    # @param [FFI::Pointer] pxlo
    # @param [FFI::Pointer] prclTrg
    # @param [FFI::Pointer] pptlSrc
    # @param [FFI::Pointer] pptlMask
    # @param [FFI::Pointer] pbo
    # @param [FFI::Pointer] pptlBrush
    # @param [Integer] rop4
    # @return [true, false]
    def self.EngBitBlt(psoTrg, psoSrc, psoMask, pco, pxlo, prclTrg, pptlSrc, pptlMask, pbo, pptlBrush, rop4) end
    attach_function 'EngBitBlt',
                    [SURFOBJ.ptr, SURFOBJ.ptr, SURFOBJ.ptr, CLIPOBJ.ptr, XLATEOBJ.ptr, RECTL.ptr, POINTL.ptr,
                     POINTL.ptr, BRUSHOBJ.ptr, POINTL.ptr, :rop4], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engcheckabort
    # @param [FFI::Pointer] pso
    # @return [true, false]
    def self.EngCheckAbort(pso) end
    attach_function 'EngCheckAbort', [SURFOBJ.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-engcomputeglyphset
    # @param [Integer] nCodePage
    # @param [Integer] nFirstChar
    # @param [Integer] cChars
    # @return [FFI::Pointer]
    def self.EngComputeGlyphSet(nCodePage, nFirstChar, cChars) end
    attach_function 'EngComputeGlyphSet', [:int, :int, :int], :pointer
  end
end

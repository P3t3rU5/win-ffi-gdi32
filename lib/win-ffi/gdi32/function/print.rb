require 'win-ffi/gdi32/enum/hook_flag'

require 'win-ffi/gdi32/typedef/hsemaphore'

require 'win-ffi/gdi32/struct/print/doc_info'

require 'win-ffi/gdi32/struct/metafile/pointl'

require 'win-ffi/gdi32/struct/print/surf_obj'
require 'win-ffi/gdi32/struct/bitmap/blend_obj'
require 'win-ffi/gdi32/struct/clipping/clip_obj'
require 'win-ffi/gdi32/struct/x_late_obj'
require 'win-ffi/gdi32/struct/brush/brush_obj'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162456(v=vs.85).aspx
    # int AbortDoc(_In_ HDC hdc)
    attach_function 'AbortDoc', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162459(v=vs.85).aspx
    # BOOL CALLBACK AbortProc(_In_ HDC hdc, _In_ int iError)
    AbortProc = callback 'AbortProc', [:hdc, :int], :bool

    # TODO WinSpool.drv DeviceCapabilitiesW not found
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183552(v=vs.85).aspx
    # DWORD DeviceCapabilities(
    #   _In_        LPCTSTR pDevice,
    #   _In_        LPCTSTR pPort,
    #   _In_        WORD    fwCapability,
    #   _Out_       LPTSTR  pOutput,
    #   _In_  const DEVMODE *pDevMode)
    # encoded_function 'DeviceCapabilities', [:string, :string, :word, :string, :pointer], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162594(v=vs.85).aspx
    # int EndDoc(_In_ HDC hdc)
    attach_function 'EndDoc', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162596(v=vs.85).aspx
    # int EndPage(_In_ HDC hdc)
    attach_function 'EndPage', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162701(v=vs.85).aspx
    # int Escape(
    #   _In_  HDC    hdc,
    #   _In_  int    nEscape,
    #   _In_  int    cbInput,
    #   _In_  LPCSTR lpvInData,
    #   _Out_ LPVOID lpvOutData)
    attach_function 'Escape', [:hdc, :int, :int, :string, :pointer], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162708(v=vs.85).aspx
    # int ExtEscape(
    #   _In_  HDC    hdc,
    #   _In_  int    nEscape,
    #   _In_  int    cbInput,
    #   _In_  LPCSTR lpszInData,
    #   _In_  int    cbOutput,
    #   _Out_ LPSTR  lpszOutData)
    attach_function 'ExtEscape', [:hdc, :int, :int, :string, :int, :string], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162960(v=vs.85).aspx
    # int SetAbortProc(
    #   _In_ HDC       hdc,
    #   _In_ ABORTPROC lpAbortProc)
    attach_function 'SetAbortProc', [:hdc, AbortProc], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183574(v=vs.85).aspx
    # int StartDoc(
    #   _In_       HDC     hdc,
    #   _In_ const DOCINFO *lpdi)
    encoded_function 'StartDoc', [:hdc, DOCINFO.ptr(:in)], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd145116(v=vs.85).aspx
    # int StartPage(_In_ HDC hDC)
    attach_function 'StartPage', [:hdc], :int

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
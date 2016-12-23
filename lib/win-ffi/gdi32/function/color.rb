require 'win-ffi/gdi32/enum/font/system_palette'

require 'win-ffi/gdi32/typedef/hpalette'
require 'win-ffi/gdi32/typedef/hgdiobj'

require 'win-ffi/gdi32/struct/color/palette_entry'
require 'win-ffi/gdi32/struct/color/log_palette'
require 'win-ffi/gdi32/struct/bitmap/color_adjustment'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183355(v=vs.85).aspx
    # BOOL AnimatePalette(
    #   _In_       HPALETTE     hpal,
    #   _In_       UINT         iStartIndex,
    #   _In_       UINT         cEntries,
    #   _In_ const PALETTEENTRY *ppe)
    attach_function 'AnimatePalette', [:hpalette, :uint, :uint, PALETTEENTRY.ptr(:in)], :bool

    # https://msdn.microsoft.com/en-us/library/dd183503(v=vs.85).aspx
    # HPALETTE CreateHalftonePalette(_In_ HDC hdc)
    attach_function 'CreateHalftonePalette', [:hdc], :hpalette

    # HPALETTE CreatePalette(_In_ const LOGPALETTE *lplgpl)
    attach_function 'CreatePalette', [LOGPALETTE.ptr], :hpalette

    # https://msdn.microsoft.com/en-us/library/dd144867(v=vs.85).aspx
    # BOOL GetColorAdjustment(_In_  HDC               hdc, _Out_ LPCOLORADJUSTMENT lpca)
    attach_function 'GetColorAdjustment', [:hdc, COLORADJUSTMENT.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd144902(v=vs.85).aspx
    # COLORREF GetNearestColor(_In_ HDC      hdc, _In_ COLORREF crColor)
    attach_function 'GetNearestColor', [:hdc, :colorref], :colorref

    # https://msdn.microsoft.com/en-us/library/dd144903(v=vs.85).aspx
    # UINT GetNearestPaletteIndex(_In_ HPALETTE hpal, _In_ COLORREF crColor)
    attach_function 'GetNearestPaletteIndex', [:hpalette, :colorref], :uint

    # https://msdn.microsoft.com/en-us/library/dd144907(v=vs.85).aspx
    # UINT GetPaletteEntries(
    #   _In_  HPALETTE       hpal,
    #   _In_  UINT           iStartIndex,
    #   _In_  UINT           nEntries,
    #   _Out_ LPPALETTEENTRY lppe)
    attach_function 'GetPaletteEntries', [:hpalette, :uint, :uint, :pointer], :uint

    # https://msdn.microsoft.com/en-us/library/dd144928(v=vs.85).aspx
    # UINT GetSystemPaletteEntries(
    #   _In_  HDC            hdc,
    #   _In_  UINT           iStartIndex,
    #   _In_  UINT           nEntries,
    #   _Out_ LPPALETTEENTRY lppe)
    attach_function 'GetSystemPaletteEntries', [:hdc, :uint, :uint, :pointer], :uint

    # https://msdn.microsoft.com/en-us/library/dd144929(v=vs.85).aspx
    # UINT GetSystemPaletteUse(_In_ HDC hdc)
    attach_function 'GetSystemPaletteUse', [:hdc], :uint

    # https://msdn.microsoft.com/en-us/library/dd162896(v=vs.85).aspx
    # UINT RealizePalette(_In_ HDC hdc)
    attach_function 'RealizePalette', [:hdc], :uint

    # https://msdn.microsoft.com/en-us/library/dd162928(v=vs.85).aspx
    # BOOL ResizePalette(_In_ HPALETTE hpal, _In_ UINT     nEntries)
    attach_function 'ResizePalette', [:hpalette, :uint], :bool

    # https://msdn.microsoft.com/en-us/library/dd162958(v=vs.85).aspx
    # HPALETTE SelectPalette(
    #   _In_ HDC      hdc,
    #   _In_ HPALETTE hpal,
    #   _In_ BOOL     bForceBackground)
    attach_function 'SelectPalette', [:hdc, :hpalette, :bool], :hpalette

    # https://msdn.microsoft.com/en-us/library/dd162968(v=vs.85).aspx
    # BOOL SetColorAdjustment(_In_       HDC             hdc, _In_ const COLORADJUSTMENT *lpca)
    attach_function 'SetColorAdjustment', [:hdc, COLORADJUSTMENT.ptr(:in)], :bool

    # https://msdn.microsoft.com/en-us/library/dd145077(v=vs.85).aspx
    # UINT SetPaletteEntries(
    #   _In_       HPALETTE     hpal,
    #   _In_       UINT         iStart,
    #   _In_       UINT         cEntries,
    #   _In_ const PALETTEENTRY *lppe)
    attach_function 'SetPaletteEntries', [:hpalette, :uint, :uint, :pointer], :uint

    # https://msdn.microsoft.com/en-us/library/dd145090(v=vs.85).aspx
    # UINT SetSystemPaletteUse(_In_ HDC  hdc, _In_ UINT uUsage)
    attach_function 'SetSystemPaletteUse', [:hdc, SystemPalette], :uint

    # https://msdn.microsoft.com/en-us/library/dd145164(v=vs.85).aspx
    # BOOL UnrealizeObject(_In_ HGDIOBJ hgdiobj)
    attach_function 'UnrealizeObject', [:hgdiobj], :bool

    # https://msdn.microsoft.com/en-us/library/dd145166(v=vs.85).aspx
    # BOOL UpdateColors(_In_ HDC hdc)
    attach_function 'UpdateColors', [:hdc], :bool
  end
end
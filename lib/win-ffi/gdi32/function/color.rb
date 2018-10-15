require_relative '../enum/font/system_palette'

require_relative '../typedef/hgdiobj'

require_relative '../struct/color/palette_entry'
require_relative '../struct/color/log_palette'
require_relative '../struct/bitmap/color_adjustment'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-animatepalette
    # BOOL AnimatePalette(
    #   _In_       HPALETTE     hpal,
    #   _In_       UINT         iStartIndex,
    #   _In_       UINT         cEntries,
    #   _In_ const PALETTEENTRY *ppe)
    def self.AnimatePalette(hpal, iStartIndex, cEntries, ppe); end
    attach_function 'AnimatePalette', [:hpalette, :uint, :uint, PALETTEENTRY.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createhalftonepalette
    # HPALETTE CreateHalftonePalette(_In_ HDC hdc)
    def self.CreateHalftonePalette(hdc); end
    attach_function 'CreateHalftonePalette', [:hdc], :hpalette

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpalette
    # HPALETTE CreatePalette(_In_ const LOGPALETTE *lplgpl)
    def self.CreatePalette(lplgpl); end
    attach_function 'CreatePalette', [LOGPALETTE.ptr], :hpalette

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcoloradjustment
    # BOOL GetColorAdjustment(_In_  HDC  hdc, _Out_ LPCOLORADJUSTMENT lpca)
    def self.GetColorAdjustment(hdc, lpca); end
    attach_function 'GetColorAdjustment', [:hdc, COLORADJUSTMENT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getnearestcolor
    # COLORREF GetNearestColor(_In_ HDC      hdc, _In_ COLORREF crColor)
    def self.GetNearestColor(hdc, crColor); end
    attach_function 'GetNearestColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getnearestpaletteindex
    # UINT GetNearestPaletteIndex(_In_ HPALETTE hpal, _In_ COLORREF crColor)
    def self.GetNearestPaletteIndex(hpal, crColor); end
    attach_function 'GetNearestPaletteIndex', [:hpalette, :colorref], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpaletteentries
    # UINT GetPaletteEntries(
    #   _In_  HPALETTE       hpal,
    #   _In_  UINT           iStartIndex,
    #   _In_  UINT           nEntries,
    #   _Out_ LPPALETTEENTRY lppe)
    def self.GetPaletteEntries(hpal, iStartIndex, nEntries, lppe); end
    attach_function 'GetPaletteEntries', [:hpalette, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getsystempaletteentries
    # UINT GetSystemPaletteEntries(
    #   _In_  HDC            hdc,
    #   _In_  UINT           iStartIndex,
    #   _In_  UINT           nEntries,
    #   _Out_ LPPALETTEENTRY lppe)
    def self.GetSystemPaletteEntries(hdc, iStartIndex, nEntries, lppe); end
    attach_function 'GetSystemPaletteEntries', [:hdc, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getsystempaletteuse
    # UINT GetSystemPaletteUse(_In_ HDC hdc)
    def self.GetSystemPaletteUse(hdc); end
    attach_function 'GetSystemPaletteUse', [:hdc], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-realizepalette
    # UINT RealizePalette(_In_ HDC hdc)
    def self.RealizePalette(hdc); end
    attach_function 'RealizePalette', [:hdc], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-resizepalette
    # BOOL ResizePalette(_In_ HPALETTE hpal, _In_ UINT     nEntries)
    def self.ResizePalette(hpal, nEntries); end
    attach_function 'ResizePalette', [:hpalette, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-selectpalette
    # HPALETTE SelectPalette( _In_ HDC      hdc, _In_ HPALETTE hpal, _In_ BOOL     bForceBackground)
    def self.SelectPalette(hdc, hpal, bForceBackground); end
    attach_function 'SelectPalette', [:hdc, :hpalette, :bool], :hpalette

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setcoloradjustment
    # BOOL SetColorAdjustment(_In_ HDC hdc, _In_ const COLORADJUSTMENT *lpca)
    def self.SetColorAdjustment(hdc, lpca); end
    attach_function 'SetColorAdjustment', [:hdc, COLORADJUSTMENT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpaletteentries
    # UINT SetPaletteEntries(
    #   _In_       HPALETTE     hpal,
    #   _In_       UINT         iStart,
    #   _In_       UINT         cEntries,
    #   _In_ const PALETTEENTRY *lppe)
    def self.SetPaletteEntries(hpal, iStart, cEntries, lppe); end
    attach_function 'SetPaletteEntries', [:hpalette, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setsystempaletteuse
    # UINT SetSystemPaletteUse(_In_ HDC  hdc, _In_ UINT uUsage)
    def self.SetSystemPaletteUse(hdc, uUsage); end
    attach_function 'SetSystemPaletteUse', [:hdc, SystemPalette], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-unrealizeobject
    # BOOL UnrealizeObject(_In_ HGDIOBJ hgdiobj)
    def self.UnrealizeObject(hgdiobj); end
    attach_function 'UnrealizeObject', [:hgdiobj], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-updatecolors
    # BOOL UpdateColors(_In_ HDC hdc)
    def self.UpdateColors(hdc); end
    attach_function 'UpdateColors', [:hdc], :bool
  end
end

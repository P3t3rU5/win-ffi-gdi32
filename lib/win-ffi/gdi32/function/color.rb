require_relative '../enum/font/system_palette'

require_relative '../typedef/hgdiobj'

require_relative '../struct/color/palette_entry'
require_relative '../struct/color/log_palette'
require_relative '../struct/bitmap/color_adjustment'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-animatepalette
    # @param [FFI::Pointer] hpal
    # @param [Integer] iStartIndex
    # @param [Integer] cEntries
    # @param [FFI::Pointer] ppe
    # @return [true, false]
    def self.AnimatePalette(hpal, iStartIndex, cEntries, ppe) end
    attach_function 'AnimatePalette', [:hpalette, :uint, :uint, PALETTEENTRY.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createhalftonepalette
    # @param [FFI::Pointer] hdc
    # @return [FFI::Pointer]
    def self.CreateHalftonePalette(hdc) end
    attach_function 'CreateHalftonePalette', [:hdc], :hpalette

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpalette
    # @param [FFI::Pointer] lplgpl
    # @return [FFI::Pointer]
    def self.CreatePalette(lplgpl) end
    attach_function 'CreatePalette', [LOGPALETTE.ptr(:in)], :hpalette

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcoloradjustment
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpca
    # @return [true, false]
    def self.GetColorAdjustment(hdc, lpca) end
    attach_function 'GetColorAdjustment', [:hdc, COLORADJUSTMENT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getnearestcolor
    # @param [FFI::Pointer] hdc
    # @param [Integer] crColor
    # @return [Integer]
    def self.GetNearestColor(hdc, crColor) end
    attach_function 'GetNearestColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getnearestpaletteindex
    # @param [FFI::Pointer] hpal
    # @param [Integer] crColor
    # @return [Integer]
    def self.GetNearestPaletteIndex(hpal, crColor) end
    attach_function 'GetNearestPaletteIndex', [:hpalette, :colorref], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpaletteentries
    # @param [FFI::Pointer] hpal
    # @param [Integer] iStartIndex
    # @param [Integer] nEntries
    # @param [FFI::Pointer] lppe
    # @return [Integer]
    def self.GetPaletteEntries(hpal, iStartIndex, nEntries, lppe) end
    attach_function 'GetPaletteEntries', [:hpalette, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getsystempaletteentries
    # @param [FFI::Pointer] hdc
    # @param [Integer] iStartIndex
    # @param [Integer] nEntries
    # @param [FFI::Pointer] lppe
    # @return [Integer]
    def self.GetSystemPaletteEntries(hdc, iStartIndex, nEntries, lppe) end
    attach_function 'GetSystemPaletteEntries', [:hdc, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getsystempaletteuse
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetSystemPaletteUse(hdc) end
    attach_function 'GetSystemPaletteUse', [:hdc], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-realizepalette
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.RealizePalette(hdc) end
    attach_function 'RealizePalette', [:hdc], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-resizepalette
    # @param [FFI::Pointer] hpal
    # @param [Integer] nEntries
    # @return [true, false]
    def self.ResizePalette(hpal, nEntries); end
    attach_function 'ResizePalette', [:hpalette, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-selectpalette
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hpal
    # @param [true, false] bForceBackground
    # @return [FFI::Pointer]
    def self.SelectPalette(hdc, hpal, bForceBackground); end
    attach_function 'SelectPalette', [:hdc, :hpalette, :bool], :hpalette

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setcoloradjustment
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpca
    # @return [true, false]
    def self.SetColorAdjustment(hdc, lpca); end
    attach_function 'SetColorAdjustment', [:hdc, COLORADJUSTMENT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpaletteentries
    # @param [FFI::Pointer] hpal
    # @param [Integer] iStart
    # @param [Integer] cEntries
    # @param [FFI::Pointer] lppe
    # @return [Integer]
    def self.SetPaletteEntries(hpal, iStart, cEntries, lppe); end
    attach_function 'SetPaletteEntries', [:hpalette, :uint, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setsystempaletteuse
    # @param [FFI::Pointer] hdc
    # @param [Integer] uUsage
    # @return [Integer]
    def self.SetSystemPaletteUse(hdc, uUsage); end
    attach_function 'SetSystemPaletteUse', [:hdc, SystemPalette], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-unrealizeobject
    # @param [FFI::Pointer] hgdiobj
    # @return [true, false]
    def self.UnrealizeObject(hgdiobj); end
    attach_function 'UnrealizeObject', [:hgdiobj], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-updatecolors
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.UpdateColors(hdc); end
    attach_function 'UpdateColors', [:hdc], :bool
  end
end

require_relative '../typedef/hcolorspace'

require_relative '../struct/windows_color_space/log_color_space'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-checkcolorsingamut
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] lpRGBTriples
    # @param [FFI::Pointer] lpBuffer
    # @param [Integer] nCount
    # @return [true, false]
    def self.CheckColorsInGamut(hDC, lpRGBTriples, lpBuffer, nCount) end
    attach_function 'CheckColorsInGamut', [:hdc, :pointer, :pointer, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-colorcorrectpalette
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] hPalette
    # @param [Integer] dwFirstEntry
    # @param [Integer] dwNumOfEntries
    # @return [true, false]
    def self.ColorCorrectPalette(hDC, hPalette, dwFirstEntry, dwNumOfEntries) end
    attach_function 'ColorCorrectPalette', [:hdc, :hpalette, :dword, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-colormatchtotarget
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] hdcTarget
    # @param [Integer] uiAction
    # @return [true, false]
    def self.ColorMatchToTarget(hDC, hdcTarget, uiAction) end
    attach_function 'ColorMatchToTarget', [:hdc, :hdc, :dword],:bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createcolorspacea
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createcolorspacew
    # @param [FFI::Pointer] lpLogColorSpace
    # @return [FFI::Pointer]
    def self.CreateColorSpace(lpLogColorSpace) end
    encoded_function 'CreateColorSpace', [LOGCOLORSPACE.ptr], :hcolorspace

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deletecolorspace
    # @param [FFI::Pointer] hColorSpace
    # @return [true, false]
    def self.DeleteColorSpace(hColorSpace) end
    attach_function 'DeleteColorSpace', [:hcolorspace], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumicmprofilesa
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] proc
    # @param [Integer] param
    # @return [Integer]
    def self.EnumICMProfiles(hdc, proc, param) end
    encoded_function'EnumICMProfiles', [:hdc, :pointer, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcolorspace
    # @param [FFI::Pointer] hDC
    # @return [FFI::Pointer]
    def self.GetColorSpace(hDC) end
    attach_function 'GetColorSpace', [:hdc], :hcolorspace

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getlogcolorspace
    # @param [FFI::Pointer] hColorSpace
    # @param [FFI::Pointer] lpBuffer
    # @param [Integer] nSize
    # @return [true, false]
    def self.GetLogColorSpace(hColorSpace, lpBuffer, nSize) end
    encoded_function 'GetLogColorSpace', [:hcolorspace, LOGCOLORSPACE.ptr, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-geticmprofilea
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-geticmprofilew
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] pBufSize
    # @param [FFI::Pointer] pszFilename
    # @return [true, false]
    def self.GetICMProfile(hdc, pBufSize, pszFilename) end
    encoded_function 'GetICMProfile', [:hdc, :pointer, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setcolorspace
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] hColorSpace
    # @return [FFI::Pointer]
    def self.SetColorSpace(hDC, hColorSpace) end
    attach_function 'SetColorSpace', [:hdc, :hcolorspace], :hcolorspace

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-seticmmode
    # @param [FFI::Pointer] hdc
    # @param [Integer] mode
    # @return [Integer]
    def self.SetICMMode(hdc, mode) end
    attach_function 'SetICMMode', [:hdc, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-seticmprofilea
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-seticmprofilew
    # @param [FFI::Pointer] hdc
    # @param [String] lpFileName
    # @return [true, false]
    def self.SetICMProfile(hdc, lpFileName) end
    encoded_function 'SetICMProfile', [:hdc, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-updateicmregkeya
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-updateicmregkeyw
    # @param [Integer] reserved
    # @param [String] lpszCMID
    # @param [String] lpszFileName
    # @param [Integer] command
    # @return [true, false]
    def self.UpdateICMRegKey(reserved, lpszCMID, lpszFileName, command); end
    encoded_function 'UpdateICMRegKey', [:dword, :string, :string, :uint], :bool
  end
end
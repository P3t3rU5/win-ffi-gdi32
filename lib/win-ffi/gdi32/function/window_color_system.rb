require_relative '../typedef/hcolorspace'

require_relative '../struct/windows_color_space/log_color_space'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-checkcolorsingamut
    # BOOL CheckColorsInGamut( HDC hDC, LPVOID lpRGBTriples, LPVOID lpBuffer, UINT nCount)
    def self.CheckColorsInGamut(hDC, lpRGBTriples, lpBuffer, nCount) end
    attach_function 'CheckColorsInGamut', [:hdc, :pointer, :pointer, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-colorcorrectpalette
    # BOOL ColorCorrectPalette( HDC hDC, HPALETTE hPalette, DWORD dwFirstEntry, DWORD dwNumOfEntries)
    def self.ColorCorrectPalette(hDC, hPalette, dwFirstEntry, dwNumOfEntries) end
    attach_function 'ColorCorrectPalette', [:hdc, :hpalette, :dword, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-colormatchtotarget
    # BOOL ColorMatchToTarget( HDC hDC, HDC hdcTarget, DWORD uiAction)
    def self.ColorMatchToTarget(hDC, hdcTarget, uiAction) end
    attach_function 'ColorMatchToTarget', [:hdc, :hdc, :dword],:bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createcolorspace
    # HCOLORSPACE CreateColorSpace(LPLOGCOLORSPACE lpLogColorSpace)
    def self.CreateColorSpace(lpLogColorSpace) end
    encoded_function 'CreateColorSpace', [LOGCOLORSPACE], :hcolorspace

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deletecolorspace
    # BOOL DeleteColorSpace(HCOLORSPACE hColorSpace)
    def self.DeleteColorSpace(hColorSpace) end
    attach_function 'DeleteColorSpace', [:hcolorspace], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumicmprofilesa
    # int EnumICMProfilesA(HDC hdc, ICMENUMPROCA proc, LPARAM param)
    def self.EnumICMProfiles(hdc, proc, param) end
    encoded_function'EnumICMProfiles', [:hdc, :pointer, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcolorspace
    # HCOLORSPACE GetColorSpace(HDC hDC)
    def self.GetColorSpace(hDC) end
    attach_function 'GetColorSpace', [:hdc], :hcolorspace

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getlogcolorspace
    # BOOL GetLogColorSpace( HCOLORSPACE hColorSpace, LPLOGCOLORSPACE lpBuffer, DWORD nSize)
    def self.GetLogColorSpace(hColorSpace, lpBuffer, nSize) end
    encoded_function 'GetLogColorSpace', [:hcolorspace, LOGCOLORSPACE.ptr, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-geticmprofilea
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-geticmprofilew
    # BOOL GetICMProfile(_In_ HDC hdc, _Inout_ LPDWORD pBufSize, _Out_writes_opt_(*pBufSize) LPSTR pszFilename)
    def self.GetICMProfile(hdc, pBufSize, pszFilename) end
    encoded_function 'GetICMProfile', [:hdc, :pointer, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setcolorspace
    # HCOLORSPACE SetColorSpace(HCD hDC, HCOLORSPACE hColorSpace)
    def self.SetColorSpace(hDC, hColorSpace) end
    attach_function 'SetColorSpace', [:hdc, :hcolorspace], :hcolorspace

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-seticmmode
    # int SetICMMode( _In_ HDC hdc, _In_ int mode)
    def self.SetICMMode(hdc, mode) end
    attach_function 'SetICMMode', [:hdc, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-seticmprofilea
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-seticmprofilew
    # BOOL SetICMProfile( _In_ HDC hdc, _In_ LPSTR lpFileName)
    def self.SetICMProfile(hdc, lpFileName) end
    encoded_function 'SetICMProfile', [:hdc, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-updateicmregkeya
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-updateicmregkeyw
    # BOOL UpdateICMRegKeyA(DWORD reserved, LPSTR lpszCMID, LPSTR lpszFileName, UINT command)
    def self.UpdateICMRegKey(reserved, lpszCMID, lpszFileName, command); end
    encoded_function 'UpdateICMRegKey', [:dword, :string, :string, :uint], :bool

  end
end
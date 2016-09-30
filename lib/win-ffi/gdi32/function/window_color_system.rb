require 'win-ffi/gdi32/typedef/hpalette'
require 'win-ffi/gdi32/typedef/hcolorspace'

require 'win-ffi/gdi32/struct/windows_color_space/log_color_space'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd371826(v=vs.85).aspx
    # BOOL WINAPI CheckColorsInGamut(
    #   HDC hDC,
    #   LPVOID lpRGBTriples,
    #   LPVOID lpBuffer,
    #   UINT nCount)
    attach_function 'CheckColorsInGamut', [:hdc, :pointer, :pointer, :uint], :bool

    # https://msdn.microsoft.com/en-us/library/dd371936(v=vs.85).aspx
    # BOOL WINAPI ColorCorrectPalette(
    #   HDC hDC,
    #   HPALETTE hPalette,
    #   DWORD dwFirstEntry,
    #   DWORD dwNumOfEntries)
    attach_function 'ColorCorrectPalette', [:hdc, :hpalette, :dword, :dword], :bool

    # https://msdn.microsoft.com/en-us/library/dd371949(v=vs.85).aspx
    # BOOL WINAPI ColorMatchToTarget(
    #   HDC hDC,
    #   HDC hdcTarget,
    #   DWORD uiAction)
    attach_function 'ColorMatchToTarget', [:hdc, :hdc, :dword],:bool

    # https://msdn.microsoft.com/en-us/library/dd316825(v=vs.85).aspx
    # HCOLORSPACE WINAPI CreateColorSpace(LPLOGCOLORSPACE lpLogColorSpace)
    encoded_function 'CreateColorSpace', [LOGCOLORSPACE], :hcolorspace

    # https://msdn.microsoft.com/en-us/library/dd316851(v=vs.85).aspx
    # BOOL WINAPI DeleteColorSpace(HCOLORSPACE hColorSpace)
    attach_function 'DeleteColorSpace', [:hcolorspace], :bool

    # https://msdn.microsoft.com/en-us/library/dd316941(v=vs.85).aspx
    # HCOLORSPACE WINAPI GetColorSpace(HDC hDC)
    attach_function 'GetColorSpace', [:hdc], :hcolorspace

    # https://msdn.microsoft.com/en-us/library/dd372070(v=vs.85).aspx
    # BOOL WINAPI GetLogColorSpace(
    #   HCOLORSPACE hColorSpace,
    #   LPLOGCOLORSPACE lpBuffer,
    #   DWORD nSize)
    encoded_function 'GetLogColorSpace', [:hcolorspace, LOGCOLORSPACE.ptr, :dword], :bool

    # https://msdn.microsoft.com/en-us/library/dd372193(v=vs.85).aspx
    # HCOLORSPACE WINAPI SetColorSpace(HCD hDC, HCOLORSPACE hColorSpace)
    attach_function 'SetColorSpace', [:hdc, :hcolorspace], :hcolorspace

  end
end
require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162456(v=vs.85).aspx
    # int AbortDoc(_In_ HDC hdc)
    attach_function 'AbortDoc', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162459(v=vs.85).aspx
    # BOOL CALLBACK AbortProc(_In_ HDC hdc, _In_ int iError)
    AbortProc = callback 'AbortProc', [:hdc, :int], :bool

    # TODO WinSpool.drv
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183552(v=vs.85).aspx
    # DWORD DeviceCapabilities(
    #   _In_        LPCTSTR pDevice,
    #   _In_        LPCTSTR pPort,
    #   _In_        WORD    fwCapability,
    #   _Out_       LPTSTR  pOutput,
    #   _In_  const DEVMODE *pDevMode)
    encoded_function 'DeviceCapabilities', [:string, :string, :word, :string, :pointer], :dword

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

  end
end
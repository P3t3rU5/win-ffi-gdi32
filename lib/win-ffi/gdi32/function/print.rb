require_relative '../struct/print/doc_info'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-abortdoc
    # int AbortDoc(_In_ HDC hdc)
    def self.AbortDoc(hdc); end
    attach_function 'AbortDoc', [:hdc], :int

    # BOOL CALLBACK AbortProc(_In_ HDC hdc, _In_ int iError)
    AbortProc = callback 'AbortProc', [:hdc, :int], :bool

    # TODO WinSpool.drv DeviceCapabilitiesW not found
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-devicecapabilitiesa
    # DWORD DeviceCapabilities(
    #   _In_        LPCTSTR pDevice,
    #   _In_        LPCTSTR pPort,
    #   _In_        WORD    fwCapability,
    #   _Out_       LPTSTR  pOutput,
    #   _In_  const DEVMODE *pDevMode)
    # def self.DeviceCapabilities(pDevice, pPort, fwCapability, pOutput, pDevMode); end
    # encoded_function 'DeviceCapabilities', [:string, :string, :word, :string, :pointer], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enddoc
    # int EndDoc(_In_ HDC hdc)
    def self.EndDoc(hdc); end
    attach_function 'EndDoc', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-endpage
    # int EndPage(_In_ HDC hdc)
    def self.EndPage(hdc); end
    attach_function 'EndPage', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-escape
    # int Escape(
    #   _In_  HDC    hdc,
    #   _In_  int    nEscape,
    #   _In_  int    cbInput,
    #   _In_  LPCSTR lpvInData,
    #   _Out_ LPVOID lpvOutData)
    def self.Escape(hdc, nEscape, cbInput, lpvInData, lpvOutData); end
    attach_function 'Escape', [:hdc, :int, :int, :string, :pointer], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extescape
    # int ExtEscape(
    #   _In_  HDC    hdc,
    #   _In_  int    nEscape,
    #   _In_  int    cbInput,
    #   _In_  LPCSTR lpszInData,
    #   _In_  int    cbOutput,
    #   _Out_ LPSTR  lpszOutData)
    def self.ExtEscape(hdc, nEscape, cbInput, lpvInData, lpvOutData, lpszOutData); end
    attach_function 'ExtEscape', [:hdc, :int, :int, :string, :int, :string], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setabortproc
    # int SetAbortProc( _In_ HDC       hdc, _In_ ABORTPROC lpAbortProc)
    def self.SetAbortProc(hdc, lpAbortProc); end
    attach_function 'SetAbortProc', [:hdc, AbortProc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-startdoc
    # int StartDoc( _In_       HDC     hdc, _In_ const DOCINFO *lpdi)
    def self.StartDoc(hdc, lpdi); end
    encoded_function 'StartDoc', [:hdc, DOCINFO.ptr(:in)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-startpage
    # int StartPage(_In_ HDC hDC)
    def self.StartPage(hdc); end
    attach_function 'StartPage', [:hdc], :int
  end
end

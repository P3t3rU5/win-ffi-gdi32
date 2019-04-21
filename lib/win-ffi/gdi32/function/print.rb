require_relative '../struct/print/doc_info'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-abortdoc
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.AbortDoc(hdc); end
    attach_function 'AbortDoc', [:hdc], :int

    # BOOL CALLBACK AbortProc(_In_ HDC hdc, _In_ int iError)
    AbortProc = callback 'AbortProc', [:hdc, :int], :bool

    # TODO WinSpool.drv DeviceCapabilitiesW not found
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-devicecapabilitiesa
    # @param [String] pDevice
    # @param [String] pPort
    # @param [Integer] fwCapability
    # @param [FFI::Pointer] pOutput
    # @param [FFI::Pointer] pDevMode
    # @return [Integer]
    # def self.DeviceCapabilities(pDevice, pPort, fwCapability, pOutput, pDevMode); end
    # encoded_function 'DeviceCapabilities', [:string, :string, :word, :string, :pointer], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enddoc
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.EndDoc(hdc) end
    attach_function 'EndDoc', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-endpage
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.EndPage(hdc) end
    attach_function 'EndPage', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-escape
    # @param [FFI::Pointer] hdc
    # @param [Integer] nEscape
    # @param [Integer] cbInput
    # @param [String] lpvInData
    # @param [FFI::Pointer] lpvOutData
    # @return [Integer]
    def self.Escape(hdc, nEscape, cbInput, lpvInData, lpvOutData) end
    attach_function 'Escape', [:hdc, :int, :int, :string, :pointer], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extescape
    # @param [FFI::Pointer] hdc
    # @param [Integer] nEscape
    # @param [Integer] cbInput
    # @param [String] lpvInData
    # @param [Integer] lpvOutData
    # @param [String] lpszOutData
    # @return [Integer]
    def self.ExtEscape(hdc, nEscape, cbInput, lpvInData, lpvOutData, lpszOutData) end
    attach_function 'ExtEscape', [:hdc, :int, :int, :string, :int, :string], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setabortproc
    # @param [FFI::Pointer] hdc
    # @param [AbortProc] lpAbortProc
    # @return [Integer]
    def self.SetAbortProc(hdc, lpAbortProc) end
    attach_function 'SetAbortProc', [:hdc, AbortProc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-startdoc
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpdi
    # @return [Integer]
    def self.StartDoc(hdc, lpdi) end
    encoded_function 'StartDoc', [:hdc, DOCINFO.ptr(:in)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-startpage
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.StartPage(hdc) end
    attach_function 'StartPage', [:hdc], :int
  end
end

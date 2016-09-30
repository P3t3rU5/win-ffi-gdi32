require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd979567(v=vs.85).aspx
    # NTSTATUS WINAPI ConfigureOPMProtectedOutput(
    #   _In_       OPM_PROTECTED_OUTPUT_HANDLE      opoOPMProtectedOutput,
    #   _In_ const DXGKMDT_OPM_CONFIGURE_PARAMETERS *pParameters,
    #   _In_       ULONG                            ulAdditionalParametersSize,
    #   _In_ const BYTE                             *pbAdditionalParameters)
    attach_function 'ConfigureOPMProtectedOutput', [:pointer, :pointer, :ulong, :byte], :ulong

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd979570(v=vs.85).aspx
    # NTSTATUS WINAPI DestroyOPMProtectedOutput(_In_ OPM_PROTECTED_OUTPUT_HANDLE opoOPMProtectedOutput)
    attach_function 'DestroyOPMProtectedOutput', [:pointer], :ulong

  end
end
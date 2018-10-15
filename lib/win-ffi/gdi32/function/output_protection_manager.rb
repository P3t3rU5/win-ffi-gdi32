module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/medfound/configureopmprotectedoutput
    # NTSTATUS ConfigureOPMProtectedOutput(
    #   _In_       OPM_PROTECTED_OUTPUT_HANDLE      opoOPMProtectedOutput,
    #   _In_ const DXGKMDT_OPM_CONFIGURE_PARAMETERS *pParameters,
    #   _In_       ULONG                            ulAdditionalParametersSize,
    #   _In_ const BYTE                             *pbAdditionalParameters)
    def self.ConfigureOPMProtectedOutput(opoOPMProtectedOutput, pParameters, ulAdditionalParametersSize,
        pbAdditionalParameters) end
    attach_function 'ConfigureOPMProtectedOutput', [:pointer, :pointer, :ulong, :byte], :ulong
    
    # https://docs.microsoft.com/en-us/windows/desktop/medfound/destroyopmprotectedoutput
    # NTSTATUS DestroyOPMProtectedOutput(_In_ OPM_PROTECTED_OUTPUT_HANDLE opoOPMProtectedOutput)
    def self.DestroyOPMProtectedOutput(opoOPMProtectedOutput) end
    attach_function 'DestroyOPMProtectedOutput', [:pointer], :ulong
  end
end
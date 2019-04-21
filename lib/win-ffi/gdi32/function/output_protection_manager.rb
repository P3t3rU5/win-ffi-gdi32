module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/medfound/configureopmprotectedoutput
    # @param [FFI::Pointer] opoOPMProtectedOutput
    # @param [FFI::Pointer] pParameters
    # @param [Integer] ulAdditionalParametersSize
    # @param [FFI::Pointer] pbAdditionalParameters
    # @return [Integer]
    def self.ConfigureOPMProtectedOutput(opoOPMProtectedOutput, pParameters, ulAdditionalParametersSize,
      pbAdditionalParameters) end
    attach_function 'ConfigureOPMProtectedOutput', [:pointer, :pointer, :ulong, :pointer], :ulong

      # https://docs.microsoft.com/en-us/windows/desktop/medfound/destroyopmprotectedoutput
      # @param [FFI::Pointer] opoOPMProtectedOutput
      # @return [Integer]
    def self.DestroyOPMProtectedOutput(opoOPMProtectedOutput) end
    attach_function 'DestroyOPMProtectedOutput', [:pointer], :ulong
  end
end
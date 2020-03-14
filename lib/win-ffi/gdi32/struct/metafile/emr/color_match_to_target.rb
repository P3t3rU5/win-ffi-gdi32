require_relative '../emr'

module WinFFI
  module Gdi32
    COLORMATCHTOTARGET_EMBEDED = 0x00000001
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrcolormatchtotarget
    class EMRCOLORMATCHTOTARGET < FFIAdditions::Struct
      attr_accessor :emr,
                    :dwAction,
                    :dwFlags,
                    :cbName,
                    :cbData,
                    :Data

      layout emr:      EMR,
             dwAction: :dword,    # CS_ENABLE, CS_DISABLE or CS_DELETE_TRANSFORM
             dwFlags:  :dword,    # flags
             cbName:   :dword,    # Size of desired target profile name
             cbData:   :dword,    # Size of raw target profile data if attached
             Data:     [:byte, 1] # Array size is cbName + cbData
    end
  end
end
require_relative '../emr'

module WinFFI
  module Gdi32
    COLORMATCHTOTARGET_EMBEDED = 0x00000001
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagcolormatchtotarget
    class EMRCOLORMATCHTOTARGET < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def dwAction; end
      def dwAction=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def cbName; end
      def cbName=(v) end
      def cbData; end
      def cbData=(v) end
      def Data; end
      def Data=(v) end

      layout emr:      EMR,
             dwAction: :dword,    # CS_ENABLE, CS_DISABLE or CS_DELETE_TRANSFORM
             dwFlags:  :dword,    # flags
             cbName:   :dword,    # Size of desired target profile name
             cbData:   :dword,    # Size of raw target profile data if attached
             Data:     [:byte, 1] # Array size is cbName + cbData
    end
  end
end
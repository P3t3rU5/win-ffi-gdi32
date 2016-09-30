require 'win-ffi/gdi32/enum/device_context/display_device_flag'

module WinFFI
  module Gdi32
    class DISPLAY_DEVICE < FFIAdditions::Struct
      layout cb:                    :dword,
             DeviceName:       [:char, 32],
             DeviceString:    [:char, 128],
             StateFlags: DisplayDeviceFlag,
             DeviceID:        [:char, 128],
             DeviceKey:       [:char, 128]

      def initialize
        super
        self[:cb] = self.size
      end
    end
  end
end
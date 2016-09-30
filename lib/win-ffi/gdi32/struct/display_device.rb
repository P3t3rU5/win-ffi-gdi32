require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class DISPLAY_DEVICE < FFIAdditions::Struct
      layout cb:                  :dword,
             DeviceName:    [:tchar, 32],
             DeviceString: [:tchar, 128],
             StateFlags:          :dword,
             DeviceID:     [:tchar, 128],
             DeviceKey:    [:tchar, 128]
    end
  end
end
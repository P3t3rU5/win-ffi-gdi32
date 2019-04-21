module WinFFI
  if WINDOWS_VERSION >= :vista
    module Gdi32
      # https://docs.microsoft.com/en-us/windows/desktop/Monitor/destroyphysicalmonitorinternal
      # @param [FFI::Pointer] hMonitor
      # @return [Integer]
      def self.DestroyPhysicalMonitorInternal(hMonitor); end
      attach_function 'DestroyPhysicalMonitorInternal', [:hmonitor], :ulong
    end
  end
end
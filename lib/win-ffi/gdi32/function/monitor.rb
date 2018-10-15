module WinFFI
  module Gdi32
    if WINDOWS_VERSION >= :vista
      # https://docs.microsoft.com/en-us/windows/desktop/Monitor/destroyphysicalmonitorinternal
      # NTSTATUS WINAPI DestroyPhysicalMonitorInternal(_In_  HANDLE hMonitor)
      def self.DestroyPhysicalMonitorInternal(hMonitor); end
      attach_function 'DestroyPhysicalMonitorInternal', [:hmonitor], :ulong
    end
  end
end
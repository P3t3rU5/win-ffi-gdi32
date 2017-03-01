require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    if WINDOWS_VERSION >= :vista
      # https://msdn.microsoft.com/en-us/library/dd979583(v=vs.85).aspx
      # NTSTATUS WINAPI DestroyPhysicalMonitorInternal(_In_  HANDLE hMonitor)
      attach_function 'DestroyPhysicalMonitorInternal', [:handle], :ulong

    end

  end
end
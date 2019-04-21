require 'win-ffi/core/struct/rect'

require_relative '../typedef/hmetafile'
require_relative '../typedef/henhmetafile'

require_relative '../struct/metafile/handle_table'
require_relative '../struct/metafile/pict'
require_relative '../struct/color/palette_entry'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-closeenhmetafile
    # @param [FFI::Pointer] hdc
    # @return [FFI::Pointer]
    def self.CloseEnhMetaFile(hdc) end
    attach_function 'CloseEnhMetaFile', [:hdc], :henhmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-closemetafile
    # @param [FFI::Pointer] hdc
    # @return [FFI::Pointer]
    def self.CloseMetaFile(hdc) end
    attach_function 'CloseMetaFile', [:hdc], :hmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-copyenhmetafile
    # @param [FFI::Pointer] hemfSrc
    # @param [String] lpszFile
    # @return [FFI::Pointer]
    def self.CopyEnhMetaFile(hemfSrc, lpszFile) end
    encoded_function 'CopyEnhMetaFile', [:henhmetafile, :string], :henhmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-copymetafile
    # @param [FFI::Pointer] hmfSrc
    # @param [String] lpszFile
    # @return [FFI::Pointer]
    def self.CopyMetaFile(hmfSrc, lpszFile) end
    encoded_function 'CopyMetaFile', [:hmetafile, :string], :hmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createenhmetafile
    # @param [FFI::Pointer] hdcRef
    # @param [String] lpFilename
    # @param [FFI::Pointer] lpRect
    # @param [String] lpDescription
    # @return [FFI::Pointer]
    def self.CreateEnhMetaFile(hdcRef, lpFilename, lpRect, lpDescription) end
    encoded_function 'CreateEnhMetaFile', [:hdc, :string, RECT.ptr, :string], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createmetafile
    # @param [String] lpszFile
    # @return [FFI::Pointer]
    def self.CreateMetaFile(lpszFile) end
    encoded_function 'CreateMetaFile', [:string], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deleteenhmetafile
    # @param [FFI::Pointer] hemf
    # @return [true, false]
    def self.DeleteEnhMetaFile(hemf) end
    attach_function 'DeleteEnhMetaFile', [:henhmetafile], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deletemetafile
    # @param [FFI::Pointer] hmf
    # @return [true, false]
    def self.DeleteMetaFile(hmf) end
    attach_function 'DeleteMetaFile', [:hmetafile], :bool

      # https://msdn.microsoft.com/en-us/library/dd162606(v=vs.85).aspx
      # int CALLBACK EnhMetaFileProc(
      #   _In_  HDC hDC,
      #   _In_  HANDLETABLE *lpHTable,
      #   _In_  const ENHMETARECORD *lpEMFR,
      #   _In_  int nObj,
      #   _In_  LPARAM lpData )
    EnhMetaFileProc = callback 'EnhMetaFileProc', [:hdc, HANDLETABLE.ptr(:in), :pointer, :int, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumenhmetafile
    # @param [FFI::Pointer] hDC
    # @param [FFI::Pointer] hemf
    # @param [EnhMetaFileProc] lpEnhMetaFunc
    # @param [FFI::Pointer] lpData
    # @param [FFI::Pointer] lpRect
    # @return [true, false]
    def self.EnumEnhMetaFile(hDC, hemf, lpEnhMetaFunc, lpData, lpRect) end
    attach_function 'EnumEnhMetaFile', [:hdc, :henhmetafile, EnhMetaFileProc, :pointer, RECT.ptr(:in)], :bool

      # https://msdn.microsoft.com/en-us/library/dd162630
      # int CALLBACK EnumMetaFileProc(
      #   _In_  HDC hDC,
      #   _In_  HANDLETABLE *lpHTable,
      #   _In_  METARECORD *lpMFR,
      #   _In_  int nObj,
      #   _In_  LPARAM lpClientData )
    EnumMetaFileProc = callback 'EnumMetaFileProc', [:hdc, HANDLETABLE.ptr(:in), :pointer, :int, :lparam], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enummetafile
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hmf
    # @param [EnumMetaFileProc] lpMetaFunc
    # @param [Integer] lParam
    # @return [true, false]
    def self.EnumMetaFile(hdc, hmf, lpMetaFunc, lParam) end
    attach_function 'EnumMetaFile', [:hdc, :hmetafile, EnumMetaFileProc, :lparam], :bool


    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdicomment
    # @param [FFI::Pointer] hdc
    # @param [Integer] cbSize
    # @param [FFI::Pointer] lpData
    # @return [true, false]
    def self.GdiComment(hdc, cbSize, lpData) end
    attach_function 'GdiComment', [:hdc, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafile
    # @param [String] lpszMetaFile
    # @return [FFI::Pointer]
    def self.GetEnhMetaFile(lpszMetaFile) end
    encoded_function 'GetEnhMetaFile', [:string], :henhmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafilebits
    # @param [FFI::Pointer] hemf
    # @param [Integer] cbBuffer
    # @param [FFI::Pointer] lpbBuffer
    # @return [Integer]
    def self.GetEnhMetaFileBits(hemf, cbBuffer, lpbBuffer) end
    attach_function 'GetEnhMetaFileBits', [:henhmetafile, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafiledescription
    # @param [FFI::Pointer] hemf
    # @param [Integer] cchBuffer
    # @param [String] lpszDescription
    # @return [Integer]
    def self.GetEnhMetaFileDescription(hemf, cchBuffer, lpszDescription) end
    encoded_function 'GetEnhMetaFileDescription', [:henhmetafile, :uint, :string], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafileheader
    # @param [FFI::Pointer] hemf
    # @param [Integer] cbBuffer
    # @param [FFI::Pointer] lpemh
    # @return [Integer]
    def self.GetEnhMetaFileHeader(hemf, cbBuffer, lpemh) end
    attach_function 'GetEnhMetaFileHeader', [:henhmetafile, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafilepaletteentries
    # @param [FFI::Pointer] hemf
    # @param [Integer] cEntries
    # @param [FFI::Pointer] lppe
    # @return [Integer]
    def self.GetEnhMetaFilePaletteEntries(hemf, cEntries, lppe) end
    attach_function 'GetEnhMetaFilePaletteEntries',
                    [:henhmetafile, :uint, PALETTEENTRY.ptr(:out)], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getmetafilebitsex
    # @param [FFI::Pointer] hmf
    # @param [Integer] nSize
    # @param [FFI::Pointer] lpvData
    # @return [Integer]
    def self.GetMetaFileBitsEx(hmf, nSize, lpvData) end
    attach_function 'GetMetaFileBitsEx', [:hmetafile, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getwinmetafilebits
    # @param [FFI::Pointer] hemf
    # @param [Integer] cbBuffer
    # @param [FFI::Pointer] lpbBuffer
    # @param [Integer] fnMapMode
    # @param [FFI::Pointer] hdcRef
    # @return [Integer]
    def self.GetWinMetaFileBits(hemf, cbBuffer, lpbBuffer, fnMapMode, hdcRef) end
    attach_function 'GetWinMetaFileBits', [:henhmetafile, :uint, :pointer, :int, :hdc], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-playenhmetafile
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hemf
    # @param [FFI::Pointer] lpRect
    # @return [true, false]
    def self.PlayEnhMetaFile(hdc, hemf, lpRect) end
    attach_function 'PlayEnhMetaFile', [:hdc, :henhmetafile, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-playenhmetafilerecord
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpHandletable
    # @param [FFI::Pointer] lpEnhMetaRecord
    # @param [Integer] nHandles
    # @return [true, false]
    def self.PlayEnhMetaFileRecord(hdc, lpHandletable, lpEnhMetaRecord, nHandles) end
    attach_function 'PlayEnhMetaFileRecord', [:hdc, :pointer, :pointer, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-playmetafile
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hmf
    # @return [true, false]
    def self.PlayMetaFile(hdc, hmf) end
    attach_function 'PlayMetaFile', [:hdc, :hmetafile], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-playmetafilerecord
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpHandletable
    # @param [FFI::Pointer] lpMetaRecord
    # @param [Integer] nHandles
    # @return [true, false]
    def self.PlayMetaFileRecord(hdc, lpHandletable, lpMetaRecord, nHandles) end
    attach_function 'PlayMetaFileRecord', [:hdc, HANDLETABLE.ptr(:in), :pointer, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setenhmetafilebits
    # @param [Integer] cbBuffer
    # @param [FFI::Pointer] lpData
    # @return [FFI::Pointer]
    def self.SetEnhMetaFileBits(cbBuffer, lpData) end
    attach_function 'SetEnhMetaFileBits', [:uint, :pointer], :henhmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmetafilebitsex
    # @param [Integer] nSize
    # @param [FFI::Pointer] lpData
    # @return [FFI::Pointer]
    def self.SetMetaFileBitsEx(nSize, lpData) end
    attach_function 'SetMetaFileBitsEx', [:uint, :pointer], :hmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setwinmetafilebits
    # @param [Integer] cbBuffer
    # @param [FFI::Pointer] lpbBuffer
    # @param [FFI::Pointer] hdcRef
    # @param [FFI::Pointer] lpmfp
    # @return [FFI::Pointer]
    def self.SetWinMetaFileBits(cbBuffer, lpbBuffer, hdcRef, lpmfp) end
    attach_function 'SetWinMetaFileBits', [:uint, :pointer, :hdc, METAFILEPICT.ptr(:in)], :henhmetafile
  end
end
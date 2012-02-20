unit m_crosswin64;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, m_crossinstaller;

implementation
type

{ TWin32To64 }

TWin32To64 = class(TCrossInstaller)
private

public
  function GetLibs(Basepath:string):boolean;override;
  function GetBinUtils(Basepath:string):boolean;override;
  constructor Create;
  destructor Destroy; override;
end;

{ TWin32To64 }

function TWin32To64.GetLibs(Basepath:string): boolean;
begin

end;

function TWin32To64.GetBinUtils(Basepath:string): boolean;
begin

end;

constructor TWin32To64.Create;
begin
  inherited Create;
  FTargetCPU:='x86_64';
  FTargetOS:='win64';
end;

destructor TWin32To64.Destroy;
begin
  inherited Destroy;
end;

var
  Win32To64:TWin32To64;

initialization
  Win32To64:=TWin32To64.Create;
  RegisterExtension(Win32To64.TargetCPU+'-'+Win32To64.TargetCPU,Win32To64);
finalization
  Win32To64.Destroy;
end.

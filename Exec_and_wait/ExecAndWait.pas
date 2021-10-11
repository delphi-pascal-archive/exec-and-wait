unit ExecAndWait;

interface
 uses
   Windows, ShellApi;

   procedure ExecuteWait(Programme: string);

implementation   

Procedure ExecuteWait(Programme: string);
var
 ShExecInfo: TShellExecuteInfo;
begin
 FillChar(ShExecInfo, SizeOf(ShExecInfo), 0);
 with ShExecInfo do
  begin
   cbSize:=SizeOf(ShExecInfo);
   fMask :=SEE_MASK_NOCLOSEPROCESS;
   lpFile:=PChar(Programme);
   lpVerb:='open';
   nShow :=SW_SHOW;
  end;
 if ShellExecuteEx(@ShExecInfo)
 then WaitForSingleObject(ShExecInfo.hProcess, INFINITE);
end;

end.


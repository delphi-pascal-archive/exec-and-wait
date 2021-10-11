unit MainForm;

 interface


 uses

   ShellApi, Messages, Windows,
   SysUtils, Classes, Controls, Forms, StdCtrls, Graphics, ExtCtrls ;

 type
   TMain = class(TForm)
    Logo: TImage;
    Moi: TLabel;
    Label1: TLabel;
    Button1: TButton;
    procedure LogoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
   private

   public

   end;

const
  MonSite = 'http://delphicool.developpez.com';

var
  Main: TMain;

implementation

uses ExecAndWait;

{$R *.dfm}

procedure TMain.LogoClick(Sender: TObject);
begin
 ShellExecute(handle, nil, PChar(MonSite), nil, nil,sw_maximize);
end;

procedure TMain.Button1Click(Sender: TObject);
begin
 ExecuteWait('notepad.exe');
 label1.Caption:='Finish ...';
end;

end.

{     ______          _        __      _ ______                  _
     /  _   \ ___   / /____   / /_   (_)/ ___  \ ____   ____   / /
     / /  / // _ \ / // __ \ / __ \ / // /   |_|/ __ \ / __ \ / /
   _/ /_ / //  __ / // /_/ // / / // // /_____ / /_/ // /_/ // /
  /______ / \___//_// ____//_/ /_//_/ \______/ \____/ \____//_/
                   /_/http://delphicool.developpez.com

      delphicool@ifrance.com
}

Program DC_AttendreFinExecution;

uses
  Forms,
  MainForm in 'MainForm.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DelphiCool app - http://delphicool.developpez.com';
  Application.CreateForm(TMain, Main);
  Application.Run;
end.

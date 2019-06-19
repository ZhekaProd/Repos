unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit1, Unit2, Unit3, Unit4, Unit5,
  Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Добавить: TButton;
    Редактировать: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ДобавитьClick(Sender: TObject);
    procedure РедактироватьClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit8;

procedure TForm6.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.MainForm.Close;
end;

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := MessageDlg('Вы действительно ходите выйти?', mtInformation,
    [mbYes, mbNo], 0) = mrYes
end;

procedure TForm6.ДобавитьClick(Sender: TObject);
begin

DataModule2.ADOTable4.Edit;

DataModule2.ADOTable4.Append;
Form8.ShowModal;
end;

procedure TForm6.РедактироватьClick(Sender: TObject);
begin
Form1.ShowModal;
end;

end.

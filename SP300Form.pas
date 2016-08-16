unit SP300Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  F: TextFile;
begin
  AssignFile(F, Edit4.Text);// LPT2,COM1,COM2...
  Rewrite(F);
  Write(F, #14); // ¦r«¬ÂX®i
  Write(F, #27+'0'); // Set 1/8-inch line feed
  Writeln(F, Edit1.Text);
  Writeln(F, Edit2.Text);
  Write(F, #27+'a'+chr(5));
  Write(F, #27+'d1'); //¤Á¤M
  Write(F, #27+'j'+chr(52)); //Feed paper n lines n/72 inch.
  CloseFile(F);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  F: TextFile;
begin
  AssignFile(F, Edit4.Text);// LPT2,COM1,COM2...
  Rewrite(F);
  Write(F, #27+'0'); // Set 1/8-inch line feed
  Write(F, #14); // ¦r«¬ÂX®i
  Write(F, #27+'h'+#1);
  Write(F, #12);
  Write(F, #27+'C'+#2);
  Writeln(F, Edit3.Text);
  Write(F, #27+'d0'); //¤Á¤M
  Write(F, #27+'j'+chr(52)); //Feed paper n lines n/72 inch.
  CloseFile(F);
end;

end.

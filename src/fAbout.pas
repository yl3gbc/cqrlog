unit fAbout;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, lclintf, ComCtrls, Grids;

type

  { TfrmAbout }

  TfrmAbout = class(TForm)
    Bevel1 : TBevel;
    btnChangelog : TButton;
    btnClose : TButton;
    Image1 : TImage;
    Label1 : TLabel;
    Label2 : TLabel;
    Label3 : TLabel;
    Label4: TLabel;
    Label5 : TLabel;
    lblLink : TLabel;
    lblLink1: TLabel;
    lblVerze : TLabel;
    PageControl1 : TPageControl;
    sgContributors: TStringGrid;
    tabAbout : TTabSheet;
    tabContributors : TTabSheet;
    procedure btnChangelogClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblLink1Click(Sender: TObject);
    procedure lblLink1MouseEnter(Sender: TObject);
    procedure lblLinkClick(Sender: TObject);
    procedure lblLinkMouseEnter(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  frmAbout: TfrmAbout;

implementation

{$R *.lfm}

{ TfrmAbout }
uses fChangelog, uVersion;

procedure TfrmAbout.lblLinkMouseEnter(Sender: TObject);
begin
  lblLink.Cursor := crHandPoint
end;

procedure TfrmAbout.lblLinkClick(Sender: TObject);
begin
  openURl(lblLink.Caption)
end;

procedure TfrmAbout.btnChangelogClick(Sender: TObject);
begin
  with TfrmChangelog.Create(Application) do
  try
    ShowModal
  finally
    Free
  end
end;

procedure TfrmAbout.FormShow(Sender: TObject);
begin
  lblVerze.Caption := cVERSION + '  ' + cBUILD_DATE
end;

procedure TfrmAbout.lblLink1Click(Sender: TObject);
begin
   openURl(lblLink1.Caption)
end;

procedure TfrmAbout.lblLink1MouseEnter(Sender: TObject);
begin
   lblLink1.Cursor := crHandPoint
end;

end.


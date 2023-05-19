unit Unit2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.Comp.Script, FireDAC.Phys.SQLite, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    Tuser: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDScript1: TFDScript;
    Tmsg_recent: TFDQuery;
    Tmsg_send: TFDQuery;
    Tmsg_rec: TFDQuery;
    Qry: TFDQuery;
    Tlistsend: TFDQuery;
    Tlistresiev: TFDQuery;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    QrySelct: TFDQuery;
    FDQuery3: TFDQuery;
    Tprofil: TFDQuery;
    QrysettingsColor: TFDQuery;
    Qrythemes: TFDQuery;
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    function BdName: string;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TDM }

uses System.IOUtils;

function TDM.BdName: string;
var
  chemin: string;
begin
  chemin := TPath.Combine(TPath.GetPublicPath, 'Database');
  if not TDirectory.Exists(chemin) then
    TDirectory.CreateDirectory(chemin);
  result := TPath.Combine(chemin, 'BCHATDb');
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Connected := true;
end;

procedure TDM.FDConnection1AfterConnect(Sender: TObject);
var
  version: integer;
  fichier: string;
  i: integer;
  majEffectuee: boolean;
begin
  fichier := BdName + '.dbv';
  if tfile.Exists(fichier) then
    version := tfile.ReadAllText(fichier).ToInteger
  else
    version := -1;
  majEffectuee := false;
  for i := version + 1 to FDScript1.SQLScripts.Count - 1 do
  begin
    if not majEffectuee then
      majEffectuee := true;
    FDScript1.ExecuteScript(FDScript1.SQLScripts[i].SQL);
    inc(version);
  end;
  if majEffectuee then
    tfile.writeAllText(fichier, version.ToString);
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TFDQuery) then
      (Components[i] as TFDQuery).Open;
end;

procedure TDM.FDConnection1BeforeConnect(Sender: TObject);
begin
  FDConnection1.Params.Clear;
  FDConnection1.Params.AddPair('DriverID', 'SQLite');
  FDConnection1.Params.AddPair('Database', BdName + '.db');
end;

end.

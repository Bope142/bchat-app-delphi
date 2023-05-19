(*
  FICHIER SOURCE APPLICATION BCHAT (Open-Source Project)
  //------------------------------------------------------------------------------
  Nom de l’application : Bluetooth Chat (BCHAT)

  Version  : 1.0.0 (bêta)

  Langage de programmation : Pascal Orienté Objet

  Environnement de développement intégrer : Delphi

  Framework : Firemonkey

  Email : irnorbertyemuang@gmail.com

  Youtube : BOPE TECH

  Date de conception : 28/04/2021 Kinshasa DRC

  Programmeur : Norbert Yemuang Bope

  //------------------------------------------------------------------------------
  Ci bas vous trouverez la partie logique de l’application BCHAT (code source complet) ;
  Cette application a été conçue à titre illustratif, pour servir aux différentes
  personnes utilisant le langage pascal comme leur langage de programmation et
  aussi l’EDI Delphi comme leurs EDI,
  Cette application permettra à toutes les personnes utilisant le langage pascal
  de voir les différentes potentialités qu’offre ce langage de programmation couplé
  avec l’EDI et le Framework firemonkey.

  Le présent code est bien structuré accompagner des commentaires expliquant les
  différentes actions que fait le code concerné.

  Pour plus des informations veuillez lire fichier README accompagnant le dossier
  que vous avez télécharger sur GitHub.
  //----------------------------------------------------------------------------
*)
unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.Bluetooth,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Layouts, FMX.Effects, FMX.Controls.Presentation, FMX.Edit,
  FMX.StdCtrls, FMX.Ani, ksTypes, ksTableView, FMX.MultiView, FMX.ListBox,
  System.Actions, FMX.ActnList, FMX.ScrollBox, FMX.Memo,
  ksChatView, System.ImageList, FMX.ImgList, FMX.Colors, ksCircleProgress,
  FMX.Helpers.Android,
  Androidapi.Helpers, System.Notification, FMX.Gestures
{$IF Defined(MSWINDOWS)}
    , Winapi.ShellApi
{$ENDIF};

type
  { Class serveur bluetooh }
  TServerConnectionTH = class(TThread)
  private
    { Private declarations }
    FServerSocket: TBluetoothServerSocket;
    FSocket: TBluetoothSocket;
  protected
    procedure Execute; override;
  public
    { Public declarations }
    constructor Create(ACreateSuspended: Boolean);
    destructor Destroy; override;
  end;

  TForm1 = class(TForm)
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    Tabcontrol1: TTabControl;
    StyleBook1: TStyleBook;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    ShadowEffect1: TShadowEffect;
    Layout2: TLayout;
    Text1: TText;
    Layout3: TLayout;
    Image1: TImage;
    ShadowEffect2: TShadowEffect;
    Layout4: TLayout;
    Text2: TText;
    Layout1: TLayout;
    RoundRect1: TRoundRect;
    ShadowEffect3: TShadowEffect;
    Text3: TText;
    Layout5: TLayout;
    Layout6: TLayout;
    Image2: TImage;
    Layout7: TLayout;
    Layout8: TLayout;
    Text4: TText;
    Edit1: TEdit;
    Rectangle3: TRectangle;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Text5: TText;
    GridPanelLayout4: TGridPanelLayout;
    Rectangle4: TRectangle;
    Image3: TImage;
    Rectangle10: TRectangle;
    Image9: TImage;
    Rectangle5: TRectangle;
    Image4: TImage;
    Rectangle11: TRectangle;
    Image10: TImage;
    Rectangle6: TRectangle;
    Image5: TImage;
    Rectangle12: TRectangle;
    Image11: TImage;
    Rectangle7: TRectangle;
    Image6: TImage;
    Rectangle13: TRectangle;
    Image12: TImage;
    Rectangle8: TRectangle;
    Image7: TImage;
    Rectangle14: TRectangle;
    Image13: TImage;
    Rectangle9: TRectangle;
    Image8: TImage;
    Rectangle15: TRectangle;
    Image14: TImage;
    FloatAnimation1: TFloatAnimation;
    Rectangle16: TRectangle;
    Text6: TText;
    ShadowEffect4: TShadowEffect;
    Layout13: TLayout;
    SpeedButton10: TSpeedButton;
    Text10: TText;
    ksTableView1: TksTableView;
    Circle3: TCircle;
    Image15: TImage;
    MultiView1: TMultiView;
    Rectangle17: TRectangle;
    Layout9: TLayout;
    SpeedButton2: TSpeedButton;
    Text7: TText;
    Circle2: TCircle;
    Circle1: TCircle;
    ShadowEffect6: TShadowEffect;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    Layout10: TLayout;
    Image16: TImage;
    Text8: TText;
    ListBoxItem2: TListBoxItem;
    Layout11: TLayout;
    Image17: TImage;
    Text9: TText;
    ListBoxItem4: TListBoxItem;
    Layout15: TLayout;
    Image19: TImage;
    Text12: TText;
    ListBoxItem5: TListBoxItem;
    Layout16: TLayout;
    Image20: TImage;
    Text13: TText;
    Rectangle18: TRectangle;
    Text14: TText;
    ComboBox2: TComboBox;
    ShadowEffect7: TShadowEffect;
    Layout17: TLayout;
    SpeedButton3: TSpeedButton;
    Layout18: TLayout;
    SpeedButton4: TSpeedButton;
    Panel1: TPanel;
    Text15: TText;
    Image21: TImage;
    Layout19: TLayout;
    Rectangle19: TRectangle;
    ShadowEffect8: TShadowEffect;
    Text16: TText;
    ksTableView2: TksTableView;
    Timer2: TTimer;
    Panel3: TPanel;
    Text17: TText;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    ChangeTabAction2: TChangeTabAction;
    ChangeTabAction3: TChangeTabAction;
    ChangeTabAction4: TChangeTabAction;
    ChangeTabAction5: TChangeTabAction;
    Rectangle20: TRectangle;
    ShadowEffect9: TShadowEffect;
    Layout20: TLayout;
    SpeedButton5: TSpeedButton;
    Layout21: TLayout;
    SpeedButton6: TSpeedButton;
    Layout22: TLayout;
    Text18: TText;
    ComboBox1: TComboBox;
    Text19: TText;
    ComboBox3: TComboBox;
    Rectangle21: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    SpeedButton8: TSpeedButton;
    Text20: TText;
    ksChatView1: TksChatView;
    Layout23: TLayout;
    Layout24: TLayout;
    Layout25: TLayout;
    Circle4: TCircle;
    Image22: TImage;
    Image23: TImage;
    Rectangle22: TRectangle;
    ShadowEffect10: TShadowEffect;
    Layout26: TLayout;
    SpeedButton9: TSpeedButton;
    Layout27: TLayout;
    Layout28: TLayout;
    Text21: TText;
    ComboBox4: TComboBox;
    Rectangle23: TRectangle;
    Layout29: TLayout;
    Text22: TText;
    Circle5: TCircle;
    Circle6: TCircle;
    ShadowEffect11: TShadowEffect;
    Layout30: TLayout;
    Text23: TText;
    Edit2: TEdit;
    SpeedButton11: TSpeedButton;
    Layout31: TLayout;
    Text24: TText;
    Edit3: TEdit;
    SpeedButton12: TSpeedButton;
    ImageList1: TImageList;
    Circle7: TCircle;
    ListImg: TImage;
    Rectangle24: TRectangle;
    ShadowEffect12: TShadowEffect;
    Layout32: TLayout;
    SpeedButton13: TSpeedButton;
    Layout33: TLayout;
    Layout34: TLayout;
    Text25: TText;
    ComboBox5: TComboBox;
    Rectangle25: TRectangle;
    Layout36: TLayout;
    Text27: TText;
    Layout37: TLayout;
    Image24: TImage;
    ShadowEffect13: TShadowEffect;
    Layout35: TLayout;
    Text26: TText;
    Text28: TText;
    Layout38: TLayout;
    Text29: TText;
    Text30: TText;
    Layout39: TLayout;
    Text31: TText;
    Text32: TText;
    Text33: TText;
    Layout40: TLayout;
    SpeedButton14: TSpeedButton;
    Panel4: TPanel;
    Text35: TText;
    ColorPanel1: TColorPanel;
    ShadowEffect15: TShadowEffect;
    SpeedButton15: TSpeedButton;
    Image25: TImage;
    Panel5: TPanel;
    ShadowEffect14: TShadowEffect;
    Rectangle26: TRectangle;
    ShadowEffect16: TShadowEffect;
    Text36: TText;
    ksCircleProgress1: TksCircleProgress;
    Layout41: TLayout;
    Text37: TText;
    Timer1: TTimer;
    Memo1: TMemo;
    ListBox2: TListBox;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ShadowEffect17: TShadowEffect;
    Layout42: TLayout;
    Layout43: TLayout;
    Text38: TText;
    AniIndicator1: TAniIndicator;
    NotificationCenter1: TNotificationCenter;
    NotificationCenter2: TNotificationCenter;
    Layout44: TLayout;
    Layout45: TLayout;
    Layout46: TLayout;
    Image26: TImage;
    Layout47: TLayout;
    Layout48: TLayout;
    Text34: TText;
    Edit4: TEdit;
    Text39: TText;
    Panel6: TPanel;
    Memo2: TMemo;
    Text40: TText;
    SpeedButton7: TSpeedButton;
    GestureManager1: TGestureManager;
    Timer3: TTimer;
    Text11: TText;
    ksTableView3: TksTableView;
    Text41: TText;
    function ManagerConnected: Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Rectangle10Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Rectangle12Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Rectangle13Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Rectangle14Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Rectangle15Click(Sender: TObject);
    procedure Rectangle9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure Text3Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure MultiView1Hidden(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ListBoxItem1Click(Sender: TObject);
    procedure Text8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure Text9Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure ListBoxItem5Click(Sender: TObject);
    procedure Text13Click(Sender: TObject);
    procedure ColorPanel1Change(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Text12Click(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Text16Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure ksTableView2ItemClick(Sender: TObject; x, y: Single;
      AItem: TksTableViewItem; AId: string; ARowObj: TksTableViewItemObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ListBoxItem6Click(Sender: TObject);
    procedure ListBoxItem7Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Memo1ViewportPositionChange(Sender: TObject;
      const OldViewportPosition, NewViewportPosition: TPointF;
      const ContentSizeChanged: Boolean);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure Timer2Timer(Sender: TObject);
    procedure ksTableView1ItemClick(Sender: TObject; x, y: Single;
      AItem: TksTableViewItem; AId: string; ARowObj: TksTableViewItemObject);
    procedure NotificationCenter1ReceiveLocalNotification(Sender: TObject;
      ANotification: TNotification);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ksTableView1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ksTableView2Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure Timer3Timer(Sender: TObject);
    procedure ksTableView3ItemClick(Sender: TObject; x, y: Single;
      AItem: TksTableViewItem; AId: string; ARowObj: TksTableViewItemObject);
    procedure FormHide(Sender: TObject);
  private
    { Déclarations privées }
    MyInfo: array [1 .. 4] of string;
    MacUser: string;
    KeyboardVisibles: Boolean;
    procedure EffetSelectAvatar(Rectangles: TRectangle; valeur: Boolean);
    procedure ShowHideOptionAvatar(valeur: Boolean);
    procedure ChangeAvatarImg(ImgId: Integer);
    procedure ChangeColor(Couleur: TAlphaColor);
    procedure VerificationUser(DeviceName: string; MacAdress: string);
    procedure MyInformationProfil;
    procedure InfosUserRecieved(LesInfos: string);
    procedure SaveInfosMyProfil;
    procedure VerificationUserFirstShowApk;
    procedure SaveRecievedMsg(IdUser: Integer; Msg: string);
    procedure SaveSendMsg(IdUser: Integer; Msg: string);
    procedure AddAllMessage(UserId: Integer);
    procedure saveRecentMessage(IdUser: Integer);
    procedure ColorChat;
    procedure OpenGitHub;
  public
    { Déclarations publiques }
    FicheHide: Boolean;
    Paired: Boolean;
    Actualisateur: Boolean;
    ColorApplication: TAlphaColors;
    NumeroUserListDevice: Integer;
    AdressMac: string;
    LastDiscuionUSerOline: string;
    SendMyInfo: Boolean;
    MyAvatarID: Integer;
    MyMacAdress: string;
    MyDeviceName: string;
    NameCompte: string;
    TabReturn: TChangeTabAction;
    MyColorBulleChat: TAlphaColor;
    DevicesSelect: Integer;
    EtatBluetooth: Boolean;
    chatOnline: Boolean;
    ActivationServer: Boolean;
    LeMessage: string;
    UserIdChatOnline: Integer;
    UserDeviceNameChatOnline: String;
    UserMacAdrresseChatOnline: String;
    UserAvatarChatOnline: Integer;
    UserNameChatOnline: string;
    UserInfonOffline: array [1 .. 5] of string;
    Finished: Boolean;
    FBluetoothManager: TBluetoothManager;
    FDiscoverDevices: TBluetoothDeviceList;
    FPairedDevices: TBluetoothDeviceList;
    FAdapter: TBluetoothAdapter;
    FSocket: TBluetoothSocket;
    ItemIndex: Integer;
    ServerConnectionTH: TServerConnectionTH;
    procedure DevicesDiscoveryEnd(const Sender: TObject;
      const ADevices: TBluetoothDeviceList);
    procedure PairedDevices;
    procedure SendData;
    procedure ActivationService;
    procedure FreeSocket;
    procedure AddListMsg;
    procedure SelectDeviceListe(MacAdress: string);
    procedure NotificationConnexionDeconnexion(ConnectPhone: Boolean);
    procedure GetIdUserOffline(DeviceNameOffline: string;
      MacAdressOffline: string);
    function GetMacAdressUserName: string;

  end;

Const
  ServiceName = 'Basic Text Server';
  ServiceGUI = '{B62C4E8D-62CC-404B-BBBF-BF3E3BBB1378}';

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses Unit2, System.UIConsts, WebPage, FMX.DialogService;

procedure TForm1.ActivationService;
begin
  (*
    //----------------------------------------------------------------------------
    Procédure gérant l’activation du service de messagerie sur le téléphone au
    démarrage de l’application si le Bluetooth est actif, cela permet à l’utilisateur
    de l’application d’être visible par d’autres utilisateurs de BCHAT.
    //--------------------------------------------------------------------------
  *)
  if (ServerConnectionTH = nil) and ManagerConnected then
  begin
    try
      FAdapter := FBluetoothManager.CurrentAdapter;
      ServerConnectionTH := TServerConnectionTH.Create(True);
      ServerConnectionTH.FServerSocket := FAdapter.CreateServerSocket
        (ServiceName, StringToGUID(ServiceGUI), false);
      ServerConnectionTH.Start;
    except
      on E: Exception do
      begin
        ShowMessage(E.Message);
      end;
    end;
  end;
end;

procedure TForm1.AddAllMessage(UserId: Integer);
var
  I: Integer;
  NbrReciev: Integer;
  Sender: TObject;
  DateCopie: string;
  cutDate: array [1 .. 3] of string;
  DateNow: string;
  LaDate: string;
  TimeCut: string;
begin
  (*
    //---------------------------------------------------------------------------
    Procédure gérant l’ajout des différentes conversations de l’utilisateur hôte
    et l’utilisateur client, tout en créant des bulles des discussions.
    L’ajout des messages se fait par une boucle for qui s’incrémenteras jusqu’à ce
    que la dernière conversation soit ajoutée.
    //--------------------------------------------------------------------------
  *)
  Finished := false; // Variable verifiant la fin de la création des bulles
  (* Recuperation de la date actuelle, et changement du format de la date
    actuelle de 02/12/2222 en 02-12-2222 *)
  // ----------------------------------------------------------------------------
  LaDate := Datetostr(Date);
  cutDate[1] := Copy(LaDate, 1, 2);
  cutDate[2] := Copy(LaDate, 4, 2);
  cutDate[3] := Copy(LaDate, 7, 10);
  DateNow := cutDate[3] + '-' + cutDate[2] + '-' + cutDate[1];
  { Verifier si les messages existent entre les deux users }
  // ----------------------------------------------------------------------------
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add
    ('SELECT Message_Send.id_user,Message_recu.id_user FROM Message_Send,Message_recu ');
  DM.Qry.SQL.Add('WHERE Message_Send.id_user = ' + Inttostr(UserId));
  DM.Qry.SQL.Add(' OR  Message_recu.id_user = ' + Inttostr(UserId));
  DM.Qry.Open();
  if (DM.Qry.RecordCount <> 0) then
  begin
    Timer2.Enabled := True;
    Layout43.Visible := True;
    Rectangle3.Visible := True;
    // --------------------------------------------------------------------------
    { Ajout des messages dans la bulle des discussions }
    // --------------------------------------------------------------------------
    begin
      ksChatView1.Clear; // Effacer toute les bulles créer
      (* Gestion  d'ajout des bulles *)
      // ------------------------------------------------------------------------
      begin
        // Positionnement des tables sur le message de l'utilisateur courant
        // ----------------------------------------------------------------------
        // Message envoyé à l'utilisateur
        DM.fdQuery1.Close;
        DM.fdQuery1.SQL.Clear;
        DM.fdQuery1.SQL.Add('SELECT * FROM Message_Send ');
        DM.fdQuery1.SQL.Add('WHERE id_user = ' + Inttostr(UserId));
        DM.fdQuery1.Open();
        // Message réçu de l'utilisateur
        DM.fdQuery2.Close;
        DM.fdQuery2.SQL.Clear;
        DM.fdQuery2.SQL.Add('SELECT * FROM Message_recu ');
        DM.fdQuery2.SQL.Add('WHERE id_user = ' + Inttostr(UserId));
        DM.fdQuery2.Open();
        // ----------------------------------------------------------------------
        (* Ajout des bulles via la boucle for *)
        // ----------------------------------------------------------------------
        begin
          DM.fdQuery1.First;
          DM.fdQuery2.First;
          for I := 1 to DM.fdQuery1.RecordCount do
          begin

            if (I = 1) then
            begin
              If (DM.fdQuery1.FieldByName('is_first_msg').AsBoolean = True) then
              begin
                DM.fdQuery1.RecNo := 1;
                DateCopie := Copy(DM.fdQuery1.FieldByName('datetimes')
                  .AsString, 1, 10);

                if (DateCopie = DateNow) then
                begin
                  TimeCut := Copy(DM.fdQuery1.FieldByName('datetimes').AsString,
                    12, Length(DM.fdQuery1.FieldByName('datetimes').AsString));
                  ksChatView1.AddChatBubble(DM.fdQuery1.FieldByName('msg')
                    .AsString + #13 + #13 + TimeCut,
                    TksTableViewChatBubblePosition.ksCbpLeft, MyColorBulleChat,
                    claWhite, Circle6.Fill.Bitmap.Bitmap);
                end
                else
                begin
                  ksChatView1.AddChatBubble(DM.fdQuery1.FieldByName('msg')
                    .AsString + #13 + #13 + DM.fdQuery1.FieldByName('datetimes')
                    .AsString, TksTableViewChatBubblePosition.ksCbpLeft,
                    MyColorBulleChat, claWhite, Circle6.Fill.Bitmap.Bitmap);
                end;
                DM.fdQuery2.Close;
                DM.fdQuery2.SQL.Clear;
                DM.fdQuery2.SQL.Add('SELECT * FROM Message_recu ');
                DM.fdQuery2.SQL.Add('WHERE id_user = ' + Inttostr(UserId));
                DM.fdQuery2.SQL.Add('AND id_msg_send = ' +
                  Inttostr(DM.fdQuery1.FieldByName('id_msg_recu').AsInteger));
                DM.fdQuery2.Open();
                for NbrReciev := 1 to DM.fdQuery2.RecordCount do
                begin
                  DM.fdQuery2.RecNo := NbrReciev;
                  DateCopie := Copy(DM.fdQuery2.FieldByName('datetimes')
                    .AsString, 1, 10);
                  if (DateCopie = DateNow) then
                  begin
                    TimeCut := Copy(DM.fdQuery2.FieldByName('datetimes')
                      .AsString, 12, Length(DM.fdQuery2.FieldByName('datetimes')
                      .AsString));
                    ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg')
                      .AsString + #13 + #13 + TimeCut,
                      TksTableViewChatBubblePosition.ksCbpRight, $FFBABDC1,
                      claBlack, ListImg.MultiResBitmap
                      [UserAvatarChatOnline].Bitmap);
                  end
                  else
                  begin
                    ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg')
                      .AsString + #13 + #13 + DM.fdQuery2.FieldByName
                      ('datetimes').AsString,
                      TksTableViewChatBubblePosition.ksCbpRight, $FFBABDC1,
                      claBlack, ListImg.MultiResBitmap
                      [UserAvatarChatOnline].Bitmap);
                  end;

                end;
              end
              else
              begin
                DM.fdQuery2.Close;
                DM.fdQuery2.SQL.Clear;
                DM.fdQuery2.SQL.Add('SELECT * FROM Message_recu ');
                DM.fdQuery2.SQL.Add('WHERE id_user = ' + Inttostr(UserId));
                DM.fdQuery2.SQL.Add('AND id_msg_send = 0');
                DM.fdQuery2.Open();
                for NbrReciev := 1 to DM.fdQuery2.RecordCount do
                begin
                  DM.fdQuery2.RecNo := NbrReciev;
                  DateCopie := Copy(DM.fdQuery2.FieldByName('datetimes')
                    .AsString, 1, 10);
                  if (DateCopie = DateNow) then
                  begin
                    TimeCut := Copy(DM.fdQuery2.FieldByName('datetimes')
                      .AsString, 12, Length(DM.fdQuery2.FieldByName('datetimes')
                      .AsString));
                    ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg')
                      .AsString + #13 + #13 + TimeCut,
                      TksTableViewChatBubblePosition.ksCbpRight, $FFBABDC1,
                      claBlack, ListImg.MultiResBitmap
                      [UserAvatarChatOnline].Bitmap);
                  end
                  else
                  begin
                    ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg')
                      .AsString + #13 + #13 + DM.fdQuery2.FieldByName
                      ('datetimes').AsString,
                      TksTableViewChatBubblePosition.ksCbpRight, $FFBABDC1,
                      claBlack, ListImg.MultiResBitmap
                      [UserAvatarChatOnline].Bitmap);
                  end;
                end;
                DM.fdQuery1.RecNo := 1;
                DateCopie := Copy(DM.fdQuery1.FieldByName('datetimes')
                  .AsString, 1, 10);
                if (DateCopie = DateNow) then
                begin
                  TimeCut := Copy(DM.fdQuery1.FieldByName('datetimes').AsString,
                    12, Length(DM.fdQuery1.FieldByName('datetimes').AsString));
                  ksChatView1.AddChatBubble(DM.fdQuery1.FieldByName('msg')
                    .AsString + #13 + #13 + TimeCut,
                    TksTableViewChatBubblePosition.ksCbpLeft, MyColorBulleChat,
                    claWhite, Circle6.Fill.Bitmap.Bitmap);
                end
                else
                begin
                  ksChatView1.AddChatBubble(DM.fdQuery1.FieldByName('msg')
                    .AsString + #13 + #13 + DM.fdQuery1.FieldByName('datetimes')
                    .AsString, TksTableViewChatBubblePosition.ksCbpLeft,
                    MyColorBulleChat, claWhite, Circle6.Fill.Bitmap.Bitmap);
                end;
                DM.fdQuery2.Close;
                DM.fdQuery2.SQL.Clear;
                DM.fdQuery2.SQL.Add('SELECT * FROM Message_recu ');
                DM.fdQuery2.SQL.Add('WHERE id_user = ' + Inttostr(UserId));
                DM.fdQuery2.SQL.Add('AND id_msg_send = ' +
                  Inttostr(DM.fdQuery1.FieldByName('id_msg_recu').AsInteger));
                DM.fdQuery2.Open();
                for NbrReciev := 1 to DM.fdQuery2.RecordCount do
                begin
                  DM.fdQuery2.RecNo := NbrReciev;
                  DateCopie := Copy(DM.fdQuery2.FieldByName('datetimes')
                    .AsString, 1, 10);
                  if (DateCopie = DateNow) then
                  begin
                    TimeCut := Copy(DM.fdQuery2.FieldByName('datetimes')
                      .AsString, 12, Length(DM.fdQuery2.FieldByName('datetimes')
                      .AsString));
                    ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg')
                      .AsString + #13 + #13 + TimeCut,
                      TksTableViewChatBubblePosition.ksCbpRight, $FFBABDC1,
                      claBlack, ListImg.MultiResBitmap
                      [UserAvatarChatOnline].Bitmap);
                  end
                  else
                  begin
                    ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg')
                      .AsString + #13 + #13 + DM.fdQuery2.FieldByName
                      ('datetimes').AsString,
                      TksTableViewChatBubblePosition.ksCbpRight, $FFBABDC1,
                      claBlack, ListImg.MultiResBitmap
                      [UserAvatarChatOnline].Bitmap);
                  end;
                end;
              end;
            end
            else
            begin
              DM.fdQuery1.RecNo := I;
              DateCopie := Copy(DM.fdQuery1.FieldByName('datetimes')
                .AsString, 1, 10);
              if (DateCopie = DateNow) then
              begin
                TimeCut := Copy(DM.fdQuery1.FieldByName('datetimes').AsString,
                  12, Length(DM.fdQuery1.FieldByName('datetimes').AsString));
                ksChatView1.AddChatBubble(DM.fdQuery1.FieldByName('msg')
                  .AsString + #13 + #13 + TimeCut,
                  TksTableViewChatBubblePosition.ksCbpLeft, MyColorBulleChat,
                  claWhite, Circle6.Fill.Bitmap.Bitmap);
              end
              else
              begin
                ksChatView1.AddChatBubble(DM.fdQuery1.FieldByName('msg')
                  .AsString + #13 + #13 + DM.fdQuery1.FieldByName('datetimes')
                  .AsString, TksTableViewChatBubblePosition.ksCbpLeft,
                  MyColorBulleChat, claWhite, Circle6.Fill.Bitmap.Bitmap);
              end;
              DM.fdQuery2.Close;
              DM.fdQuery2.SQL.Clear;
              DM.fdQuery2.SQL.Add('SELECT * FROM Message_recu ');
              DM.fdQuery2.SQL.Add('WHERE id_user = ' + Inttostr(UserId));
              DM.fdQuery2.SQL.Add('AND id_msg_send = ' +
                Inttostr(DM.fdQuery1.FieldByName('id_msg_recu').AsInteger));
              DM.fdQuery2.Open();
              for NbrReciev := 1 to DM.fdQuery2.RecordCount do
              begin
                DM.fdQuery2.RecNo := NbrReciev;
                DateCopie := Copy(DM.fdQuery2.FieldByName('datetimes')
                  .AsString, 1, 10);
                if (DateCopie = DateNow) then
                begin
                  TimeCut := Copy(DM.fdQuery2.FieldByName('datetimes').AsString,
                    12, Length(DM.fdQuery2.FieldByName('datetimes').AsString));
                  ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg')
                    .AsString + #13 + #13 + TimeCut,
                    TksTableViewChatBubblePosition.ksCbpRight, $FFBABDC1,
                    claBlack, ListImg.MultiResBitmap
                    [UserAvatarChatOnline].Bitmap);
                end
                else
                begin
                  ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg')
                    .AsString + #13 + #13 + DM.fdQuery2.FieldByName('datetimes')
                    .AsString, TksTableViewChatBubblePosition.ksCbpRight,
                    $FFBABDC1, claBlack,
                    ListImg.MultiResBitmap[UserAvatarChatOnline].Bitmap);
                end;
              end;

            end;
          end;
          ksChatView1.ScrollToEnd;
          Finished := True;
        end
      end;
    end;
  end
  else
  begin
    ksChatView1.Clear;
    DM.fdQuery1.Close;
    DM.fdQuery1.SQL.Clear;
    DM.fdQuery1.SQL.Add('SELECT * FROM Message_Send ');
    DM.fdQuery1.SQL.Add('WHERE id_user = ' + Inttostr(UserId));
    DM.fdQuery1.Open();
    if (DM.fdQuery1.RecordCount <> 0) then
    begin
      DateCopie := Copy(DM.fdQuery1.FieldByName('datetimes').AsString, 1, 10);
      if (DateCopie = DateNow) then
      begin
        TimeCut := Copy(DM.fdQuery1.FieldByName('datetimes').AsString, 12,
          Length(DM.fdQuery1.FieldByName('datetimes').AsString));
        ksChatView1.AddChatBubble(DM.fdQuery1.FieldByName('msg').AsString + #13
          + #13 + TimeCut, TksTableViewChatBubblePosition.ksCbpLeft,
          MyColorBulleChat, claWhite, Circle6.Fill.Bitmap.Bitmap);
      end
      else
      begin
        ksChatView1.AddChatBubble(DM.fdQuery1.FieldByName('msg').AsString + #13
          + #13 + DM.fdQuery1.FieldByName('datetimes').AsString,
          TksTableViewChatBubblePosition.ksCbpLeft, MyColorBulleChat, claWhite,
          Circle6.Fill.Bitmap.Bitmap);
      end;
    end
    else
    begin
      DM.fdQuery2.Close;
      DM.fdQuery2.SQL.Clear;
      DM.fdQuery2.SQL.Add('SELECT * FROM Message_recu ');
      DM.fdQuery2.SQL.Add('WHERE id_user = ' + Inttostr(UserId));
      DM.fdQuery2.Open();
      if (DM.fdQuery2.RecordCount <> 0) then
      begin
        for I := 1 to DM.fdQuery2.RecordCount do
        begin
          DM.fdQuery2.RecNo := I;
          DateCopie := Copy(DM.fdQuery2.FieldByName('datetimes')
            .AsString, 1, 10);
          if (DateCopie = DateNow) then
          begin
            TimeCut := Copy(DM.fdQuery2.FieldByName('datetimes').AsString, 12,
              Length(DM.fdQuery2.FieldByName('datetimes').AsString));
            ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg').AsString +
              #13 + #13 + TimeCut, TksTableViewChatBubblePosition.ksCbpRight,
              $FFBABDC1, claBlack, ListImg.MultiResBitmap
              [UserAvatarChatOnline].Bitmap);
          end
          else
          begin
            ksChatView1.AddChatBubble(DM.fdQuery2.FieldByName('msg').AsString +
              #13 + #13 + DM.fdQuery2.FieldByName('datetimes').AsString,
              TksTableViewChatBubblePosition.ksCbpRight, $FFBABDC1, claBlack,
              ListImg.MultiResBitmap[UserAvatarChatOnline].Bitmap);
          end;
        end;
      end
      else
      begin
        ksChatView1.Clear;
      end;
    end;
    ChangeTabAction3.ExecuteTarget(Sender);
  end;
end;

procedure TForm1.AddListMsg;
var
  I: Integer;
  NameUser, Details, DateMsg: string;
  avatar: Integer;
  DateCopie: string;
  TimeCopy: string;

begin
  (* Procédure permettant d’ajouter les récentes conversations des utilisateurs
    dans la lise  se trouvant dans la fenêtre d’accueil. *)
  // --------------------------------------------------------------------------
  DM.FDQuery3.Close;
  DM.FDQuery3.SQL.Clear;
  DM.FDQuery3.SQL.Add('SELECT * FROM Message_user_recent ');
  DM.FDQuery3.SQL.Add('ORDER BY  datetimes DESC');
  DM.FDQuery3.Open();

  if (DM.FDQuery3.RecordCount <> 0) then
  begin

    Text10.Visible := false;
    ksTableView1.Visible := True;
    ksTableView1.ClearItems;
    for I := 1 to DM.FDQuery3.RecordCount do
    begin
      DM.FDQuery3.RecNo := I;
      NameUser := DM.FDQuery3.FieldByName('name_user').AsString;
      Details := DM.FDQuery3.FieldByName('details_recent_msg').AsString;
      DateCopie := Copy(DM.FDQuery3.FieldByName('datetimes').AsString, 1, 10);
      TimeCopy := Copy(DM.FDQuery3.FieldByName('datetimes').AsString, 12,
        Length(DM.FDQuery3.FieldByName('datetimes').AsString));
      if (DateCopie = Datetostr(Date)) then
      begin
        DateMsg := TimeCopy;
      end
      else
      begin
        DateMsg := DateCopie;
      end;
      avatar := DM.FDQuery3.FieldByName('avatar_user').AsInteger;
      ksTableView1.Items.AddItem(NameUser, Details, DateMsg, atNone);
      ksTableView1.Items[I - 1].Image.Bitmap := ListImg.MultiResBitmap
        [avatar].Bitmap;
      ksTableView1.Items[I - 1].SubTitle.Margins.Top := 5;
      ksTableView1.Items[I - 1].SubTitle.Width := ksTableView1.Width -
        (45 - ksTableView1.Items[I - 1].Detail.Width);
      ksTableView1.Items[I - 1].SubTitle.Height := 10;
    end;
  end
  else
  begin
    Text10.Visible := True;
    ksTableView1.Visible := false;
  end;
end;

procedure TForm1.ChangeAvatarImg(ImgId: Integer);
begin
  (* Procédure permettant de modifier l’avatar de l’utilisateur. *)
  // ----------------------------------------------------------------------------
  if (ImgId > 0) then
  begin
    Circle6.Fill.Bitmap.Bitmap := ListImg.MultiResBitmap[ImgId].Bitmap;
    Circle1.Fill.Bitmap.Bitmap := ListImg.MultiResBitmap[ImgId].Bitmap;
  end
  else
  begin
    Circle6.Fill.Bitmap.Bitmap := ListImg.MultiResBitmap[0].Bitmap;
    Circle1.Fill.Bitmap.Bitmap := ListImg.MultiResBitmap[0].Bitmap;
  end;
end;

procedure TForm1.ChangeColor(Couleur: TAlphaColor);
begin
  (* Changement des couleurs de l'application *)
  // ---------------------------------------------------------------------------
  CallInUIThreadAndWaitFinishing(
    procedure
    begin
      TAndroidHelper.Activity.getWindow.setStatusBarColor(Couleur);
      TAndroidHelper.Activity.getWindow.setNavigationBarColor(Couleur);
    end);
  Rectangle16.Fill.Color := Couleur;
  Rectangle17.Fill.Color := Couleur;
  Circle3.Fill.Color := Couleur;
  Rectangle18.Fill.Color := Couleur;
  Rectangle19.Fill.Color := Couleur;
  Rectangle20.Fill.Color := Couleur;
  Circle4.Fill.Color := Couleur;
  Rectangle22.Fill.Color := Couleur;
  Rectangle24.Fill.Color := Couleur;
  Rectangle26.Fill.Color := Couleur;
  Circle7.Fill.Color := Couleur;
  Circle7.Stroke.Color := Couleur;
  ksCircleProgress1.Color := Couleur;
  MyColorBulleChat := Couleur;
  ColorPanel1.Color := Rectangle16.Fill.Color;
end;

procedure TForm1.ColorChat;
begin
  (* Couleur de la bulle de message *)
  // ---------------------------------------------------------------------------
  If (DM.QrysettingsColor.RecordCount = 0) then
  begin
    try
      DM.QrysettingsColor.append;
      DM.QrysettingsColor.FieldByName('color_name').AsString :=
        AlphaColorToString(MyColorBulleChat);
      DM.QrysettingsColor.Post;
    except
      DM.QrysettingsColor.Cancel;
    end;
  end
  else
  begin
    if (AlphaColorToString(MyColorBulleChat) <> DM.QrysettingsColor.FieldByName
      ('color_name').AsString) then
    begin
      try
        DM.QrysettingsColor.Edit;
        DM.QrysettingsColor.FieldByName('color_name').AsString :=
          AlphaColorToString(MyColorBulleChat);
        DM.QrysettingsColor.Post;
      except
        DM.QrysettingsColor.Cancel;
      end;
    end;
  end;
end;

procedure TForm1.ColorPanel1Change(Sender: TObject);
begin
  ChangeColor(ColorPanel1.Color);
end;

procedure TForm1.DevicesDiscoveryEnd(const Sender: TObject;
const ADevices: TBluetoothDeviceList);
var
  AIcon: TBitmap;
begin
  (* recherche des nouveaux télephone bluetooth *)
  // ----------------------------------------------------------------------------
  TThread.Synchronize(nil,
    procedure
    var
      I: Integer;
    begin
      Panel5.Visible := True;
      Panel5.BringToFront;
      Layout41.Visible := false;
      Timer1.Enabled := false;
      AIcon := Image25.Bitmap;
      FDiscoverDevices := ADevices;
      for I := 0 to ADevices.Count - 1 do
      begin
        ksTableView3.Items.AddItem(ADevices[I].DeviceName, ADevices[I].Address,
          'Jumelé cet appareil', atMore).Image.Bitmap := AIcon;
      end;
      if (ADevices.Count > 0) then
      begin
        Text11.Visible := false;
      end
      else
      begin
        Text11.Visible := True;
      end;
    end);
end;

procedure TForm1.EffetSelectAvatar(Rectangles: TRectangle; valeur: Boolean);
begin
  (* Effet selection avatar *)
  Rectangles.Visible := valeur;
end;

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
  if (Panel2.Margins.Left > 0) then
  begin
    Panel2.Visible := false;
    Rectangle3.Visible := false;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  (* Destruction du serveur Bluetooth à la fermeture de l’application. *)
  // ----------------------------------------------------------------------------
  if ServerConnectionTH <> nil then
  begin
    ServerConnectionTH.Terminate;
    ServerConnectionTH.WaitFor;
    FreeAndNil(ServerConnectionTH);
  end;
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  (* Activation du service d’échange de message Bluetooth si le Bluetooth du
    téléphone est actif. *)
  // ----------------------------------------------------------------------------
  try
    FBluetoothManager := TBluetoothManager.Current;
    FAdapter := FBluetoothManager.CurrentAdapter;
    if ManagerConnected then
    begin
      Panel3.Visible := false;
      Panel1.Visible := True;
      EtatBluetooth := True;
      PairedDevices;
      ActivationService;
      Paired := True;
    end
    else
    begin
      EtatBluetooth := false;
      Panel1.Visible := false;
      Panel3.Visible := True;
      Paired := false;
    end;
  except
    on E: Exception do
    begin
      EtatBluetooth := false;
      Panel1.Visible := false;
      Panel3.Visible := True;
      Paired := false;
    end;
  end;
  Tabcontrol1.TabPosition := TTabPosition(2);
  Panel2.Margins.Left := Form1.Width + 10;
  Panel2.Visible := false;
  MultiView1.Width := Form1.Width - 50;
  MultiView1.Visible := false;
  ksCircleProgress1.Align := TAlignLayout.Center;
  TabItem1.IsSelected := True;
  SendMyInfo := false;
  Actualisateur := false;
end;

procedure TForm1.FormHide(Sender: TObject);
begin
  FicheHide := True;
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
Shift: TShiftState);
begin
  (* Gestion de la touche retour sur Android *)
  // ----------------------------------------------------------------------------
  if (Key = vkHardwareBack) then
  begin
    Key := 0;
    if (TabItem2.IsSelected) then
    begin
      If (Panel5.IsVisible) then
      begin
        Panel5.Visible := false;
        Rectangle3.Visible := false;
        if (ksTableView3.Items.Count > 0) then
        begin
          PairedDevices;
        end;
      end
      else
      begin
        If (Layout41.Visible = false) then
        begin
          AddListMsg;
          MultiView1.Enabled := True;
          ChangeTabAction1.ExecuteTarget(Sender);
        end
      end;
    end
    else if (TabItem3.IsSelected) then
    begin
      if (Memo1.IsFocused) then
      begin
        Memo1.ResetFocus;
      end
      else if (Layout42.IsVisible) then
      begin
        Layout42.Visible := false;
        Rectangle3.Visible := false;
      end
      else
      begin
        if (KeyboardVisibles = false) then
        begin
          AddListMsg;
          if (TabReturn = ChangeTabAction1) then
          begin
            MultiView1.Enabled := True;
          end;
          TabReturn.ExecuteTarget(Sender);
        end
      end;
    end
    else if (TabItem4.IsSelected) then
    begin
      If (Panel2.IsVisible) then
      begin
        ShowHideOptionAvatar(false);
      end
      else
      begin
        if (Edit2.IsFocused) then
        begin
          Edit2.ResetFocus;
        end
        else
        begin
          SpeedButton12Click(Sender);
        end;

      end;
    end
    else if (TabItem5.IsSelected) then
    begin
      ChangeTabAction1.ExecuteTarget(Sender);
      MultiView1.Enabled := True;
    end
    else
    begin
      if (MultiView1.IsShowed) then
      begin
        SpeedButton10.OnClick(Sender);
      end
      else if (Panel4.IsVisible) then
      begin
        Panel4.Visible := false;
        Rectangle3.Visible := false;
      end
      else if (Panel2.IsVisible) then
      begin
        ShowHideOptionAvatar(false);
      end
      else if (Panel6.IsVisible) then
      begin
        Panel6.Visible := false;
        Rectangle3.Visible := false;
      end
      else if (Edit1.IsFocused) then
      begin
        Edit1.ResetFocus;
      end
      else if (Edit4.IsFocused) then
      begin
        Edit4.ResetFocus;
      end
      else
      begin
        TDialogService.MessageDialog('Voulez-vous quitter l''application ?',
          System.UITypes.TMsgDlgType.mtInformation,
          [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo],
          System.UITypes.TMsgDlgBtn.mbNo, 0,

          procedure(const AResult: TModalResult)
          begin
            case AResult of
              mrYES:
                begin
                  if ServerConnectionTH <> nil then
                  begin
                    ServerConnectionTH.Terminate;
                    ServerConnectionTH.WaitFor;
                    FreeAndNil(ServerConnectionTH);
                  end;
                  Application.Terminate;
                end;
            end;
          end);

      end;
    end;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  VerificationUserFirstShowApk;
  FicheHide := false;
end;

procedure TForm1.FormVirtualKeyboardHidden(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
begin
  (* Gestion du clavier virtuelle sur Android *)
  // ----------------------------------------------------------------------------
  KeyboardVisibles := KeyboardVisible;
  if (TabItem4.IsSelected) then
  begin
    Rectangle23.Height := 273;
    Layout30.Margins.Top := 35;
  end
  else if (TabItem1.IsSelected) then
  begin
    Rectangle2.Height := 280;
    Layout4.Margins.Top := 10;
  end;
end;

procedure TForm1.FormVirtualKeyboardShown(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
begin
  (* Gestion du clavier virtuelle sur Android *)
  // ---------------------------------------------------------------------------
  KeyboardVisibles := KeyboardVisible;
  if (TabItem4.IsSelected) then
  begin
    Rectangle23.Height := 200;
    Layout30.Margins.Top := 0;
  end
  else if (TabItem1.IsSelected) then
  begin
    Rectangle2.Height := 150;
    Layout4.Margins.Top := 0;
  end
  else if (TabItem3.IsSelected) then
  begin
    if (Memo1.IsFocused) then
    begin
      ksChatView1.ScrollToEnd;
    end;
  end;
end;

procedure TForm1.FreeSocket;
begin
  (* Destructions du serveur Bluetooth *)
  // ----------------------------------------------------------------------------
  ItemIndex := -6;
  FreeAndNil(FSocket);
end;

procedure TForm1.GetIdUserOffline(DeviceNameOffline, MacAdressOffline: string);
begin
  (* Procédure permettant de retirer l’identifiant d’un user non connecter dans
    la bd. *)
  // ----------------------------------------------------------------------------
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('SELECT * FROM User_contact ');
  DM.Qry.SQL.Add(' WHERE  mac_adress = ' + QuotedStr(MacAdressOffline));
  DM.Qry.Open();
  if (DM.Qry.RecordCount = 0) then
  begin
    try
      DM.Tuser.append;
      DM.Tuser.FieldByName('device_name').AsString := DeviceNameOffline;
      DM.Tuser.FieldByName('mac_adress').AsString := MacAdressOffline;
      DM.Tuser.FieldByName('avatar_id').AsInteger := 0;
      DM.Tuser.Post;
      DM.Tuser.Last;

      UserInfonOffline[1] := DM.Tuser.FieldByName('id_user').AsString;
      UserInfonOffline[2] := DM.Tuser.FieldByName('device_name').AsString;
      UserInfonOffline[3] := DM.Tuser.FieldByName('mac_adress').AsString;
      UserInfonOffline[4] := DM.Tuser.FieldByName('avatar_id').AsString;
      UserAvatarChatOnline := StrToInt(UserInfonOffline[4]);
      Text18.Text := DM.Tuser.FieldByName('device_name').AsString;
    except
      DM.Tuser.Cancel;
    end
  end
  else
  begin
    if (DM.Qry.FieldByName('device_name').AsString <> DeviceNameOffline) then
    begin
      try
        DM.Qry.Edit;
        DM.Qry.FieldByName('device_name').AsString := DeviceNameOffline;
        DM.Qry.Post;

        UserInfonOffline[1] := DM.Qry.FieldByName('id_user').AsString;
        UserInfonOffline[2] := DM.Qry.FieldByName('device_name').AsString;
        UserInfonOffline[3] := DM.Qry.FieldByName('mac_adress').AsString;

        if (DM.Qry.FieldByName('avatar_id').AsInteger >= 0) then
        begin
          UserInfonOffline[4] := DM.Qry.FieldByName('avatar_id').AsString;
          UserAvatarChatOnline := StrToInt(UserInfonOffline[4]);
        end
        else
        begin
          UserInfonOffline[4] := '0';
          UserAvatarChatOnline := StrToInt(UserInfonOffline[4]);
        end;
      except
        DM.Qry.Cancel;
      end
    end;
    UserInfonOffline[1] := DM.Qry.FieldByName('id_user').AsString;
    UserInfonOffline[2] := DM.Qry.FieldByName('device_name').AsString;
    UserInfonOffline[3] := DM.Qry.FieldByName('mac_adress').AsString;
    UserInfonOffline[4] := DM.Qry.FieldByName('avatar_id').AsString;
    UserAvatarChatOnline := StrToInt(UserInfonOffline[4]);
    if (DM.Qry.FieldByName('name_user').AsString = '') then
    begin
      Text18.Text := DM.Qry.FieldByName('device_name').AsString;
    end
    else
    begin
      Text18.Text := DM.Qry.FieldByName('name_user').AsString;
    end;

  end;
end;

function TForm1.GetMacAdressUserName: string;
Var
  NameUser: string;
begin
  (* Procédure permettant de récupérer l’adresse d’un utilisateur dans la base
    des données. *)
  // ----------------------------------------------------------------------------
  NameUser := ksTableView1.Items[ksTableView1.ItemIndex].Title.Text;
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('SELECT * FROM User_contact ');
  DM.Qry.SQL.Add(' WHERE  name_user = ' + QuotedStr(NameUser));
  DM.Qry.Open();
  Result := DM.Qry.FieldByName('mac_adress').AsString;
end;

procedure TForm1.Image15Click(Sender: TObject);
begin
  if (ManagerConnected) then
  begin
    if (ksTableView2.Items.Count > 0) then
    begin
      PairedDevices;
    end;
    Panel3.Visible := false;
    Panel1.Visible := True;
    Actualisateur := false;
  end
  else
  begin
    Panel3.Visible := True;
    Panel1.Visible := false;
    Actualisateur := True;
  end;
  MultiView1.Enabled := false;
  ChangeTabAction2.ExecuteTarget(Sender);
end;

procedure TForm1.Image22Click(Sender: TObject);
begin
  if (Memo1.Text <> '') then
  begin

    if (Text18.Text = UserNameChatOnline) then
    begin
      Memo1.ResetFocus;
      LeMessage := Memo1.Text;
      LastDiscuionUSerOline := Memo1.Text;
      Memo1.Text := '';
      Layout23.Height := 72;
      Layout25.Align := TAlignLayout.Client;
      if ManagerConnected then
      begin
        if (chatOnline = True) then
        begin
          try
            SendData;
          except
            on E: Exception do
            begin
              ShowMessage('L''utilisateur vient de se déconnecter !');
              ItemIndex := -6;
              FreeAndNil(FSocket);
            end;
          end;
        end
        else
        begin
          ShowMessage('L’utilisateur n’est pas en ligne !');
          ItemIndex := -6;
          FreeAndNil(FSocket);
        end;
      end
      else
      begin
        EtatBluetooth := false;
        Panel1.Visible := false;
        Panel3.Visible := True;
        ShowMessage('Votre Bluetooth est inactif ! Merci de l’activer. ');

      end;
    end
    else
    begin
      Memo1.Text := '';
      ShowMessage('L’utilisateur n’est pas en ligne !');
    end;

  end
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle10, True);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle15, false);
  MyAvatarID := 0;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle11, True);
  EffetSelectAvatar(Rectangle10, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle15, false);
  MyAvatarID := 1;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle12, True);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle10, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle15, false);
  MyAvatarID := 2;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle13, True);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle10, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle15, false);
  MyAvatarID := 3;
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle14, True);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle10, false);
  EffetSelectAvatar(Rectangle15, false);
  MyAvatarID := 4;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle15, True);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle10, false);
  MyAvatarID := 5;
end;

procedure TForm1.InfosUserRecieved(LesInfos: string);
var
  NameUser: string;
  DeviceName: string;
  AvatarId: string;
  MacAdress: string;
  Cut: array [1 .. 4] of string;
  AncienNom: array [1 .. 2] of string;
begin
  (* Procédure permettant de récupérer les informations envoyés par un autre
    contacte , actualiser ces informations  dans la base des données  et renvoyer
    les informations au l’utilisateur. *)
  // ----------------------------------------------------------------------------
  if (TabItem3.IsSelected) then
  begin
    AncienNom[1] := Text18.Text;
  end;
  Cut[1] := Copy(LesInfos, 9, Length(LesInfos));
  NameUser := Copy(Cut[1], 1, pos(':', Cut[1]) - 1);
  Cut[2] := Copy(Cut[1], pos(':', Cut[1]) + 1, Length(Cut[1]));
  DeviceName := Copy(Cut[2], 1, pos(':', Cut[2]) - 1);
  Cut[3] := Copy(Cut[2], pos(':', Cut[2]) + 1, Length(Cut[2]));
  AvatarId := Cut[3][0];
  Cut[4] := Copy(Cut[3], pos(':', Cut[3]) + 1, Length(Cut[3]));
  MacAdress := Cut[4];
  UserAvatarChatOnline := StrToInt(AvatarId);
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('SELECT * FROM User_contact ');
  DM.Qry.SQL.Add(' WHERE  mac_adress = ' + QuotedStr(MacAdress));
  DM.Qry.Open();
  if (DM.Qry.RecordCount = 0) then
  begin
    try
      DM.Tuser.append;
      DM.Tuser.FieldByName('name_user').AsString := NameUser + '(' +
        DeviceName + ')';
      DM.Tuser.FieldByName('device_name').AsString := DeviceName;
      DM.Tuser.FieldByName('avatar_id').AsInteger := StrToInt(AvatarId);
      DM.Tuser.FieldByName('mac_adress').AsString := MacAdress;
      DM.Tuser.Post;
      UserIdChatOnline := DM.Tuser.FieldByName('id_user').AsInteger;
      UserDeviceNameChatOnline := DM.Tuser.FieldByName('device_name').AsString;
      UserMacAdrresseChatOnline := DM.Tuser.FieldByName('mac_adress').AsString;
      UserAvatarChatOnline := DM.Tuser.FieldByName('avatar_id').AsInteger;
      UserNameChatOnline := DM.Tuser.FieldByName('name_user').AsString;
      AncienNom[2] := UserNameChatOnline;
    except
      DM.Tuser.Cancel;
    end
  end
  else
  begin
    if (DM.Qry.FieldByName('name_user').AsString = '') then
    begin
      DM.Qry.Edit;
      DM.Qry.FieldByName('name_user').AsString := NameUser + '(' +
        DeviceName + ')';
      DM.Qry.FieldByName('avatar_id').AsInteger := StrToInt(AvatarId);
      DM.Qry.Post;
    end;
    AncienNom[2] := DM.Qry.FieldByName('name_user').AsString;
    if ((DM.Qry.FieldByName('name_user').AsString + '(' + DeviceName + ')' <>
      NameUser) or (DM.Qry.FieldByName('device_name').AsString <> DeviceName) or
      (DM.Qry.FieldByName('avatar_id').AsString <> AvatarId)) then
    begin
      try
        DM.Qry.Edit;
        DM.Qry.FieldByName('name_user').AsString := NameUser + '(' +
          DeviceName + ')';
        DM.Qry.FieldByName('device_name').AsString := DeviceName;
        DM.Qry.FieldByName('avatar_id').AsInteger := StrToInt(AvatarId);
        DM.Qry.Post;
        UserIdChatOnline := DM.Qry.FieldByName('id_user').AsInteger;
        UserDeviceNameChatOnline := DM.Qry.FieldByName('device_name').AsString;
        UserMacAdrresseChatOnline := DM.Qry.FieldByName('mac_adress').AsString;
        UserAvatarChatOnline := DM.Qry.FieldByName('avatar_id').AsInteger;
        UserNameChatOnline := DM.Qry.FieldByName('name_user').AsString;
      except
        DM.Qry.Cancel;
      end
    end;
    UserIdChatOnline := DM.Qry.FieldByName('id_user').AsInteger;
    UserDeviceNameChatOnline := DM.Qry.FieldByName('device_name').AsString;
    UserMacAdrresseChatOnline := DM.Qry.FieldByName('mac_adress').AsString;
    UserAvatarChatOnline := DM.Qry.FieldByName('avatar_id').AsInteger;
    UserNameChatOnline := DM.Qry.FieldByName('name_user').AsString;
    if ((TabItem3.IsSelected) AND (Text18.Text = UserDeviceNameChatOnline)) then
    begin
      Text18.Text := DM.Qry.FieldByName('name_user').AsString;
      ListBoxItem6.Text := 'Se deconnecter';
    end
    else
    begin
      if (TabItem3.IsSelected) then
      begin
        if (Text18.Text = AncienNom[2]) then
        begin
          Text18.Text := UserNameChatOnline;
        end;
      end;
      ListBoxItem6.Text := 'Se connecter';
    end;
  end;
  SelectDeviceListe(UserMacAdrresseChatOnline);
  if (TabItem3.IsSelected) then
  begin
    if (SendMyInfo = false) then
    begin
      if ManagerConnected then
      begin
        MyInformationProfil;
        LeMessage := 'CONNECT';
        SendData;
      end;
    end;
  end
  else
  begin
    if (SendMyInfo = false) then
    begin
      if ManagerConnected then
      begin
        MyInformationProfil;
        LeMessage := 'CONNECT';
        SendData;
      end;
    end;
  end;
  NotificationConnexionDeconnexion(True);
  begin
    DM.QrySelct.Close;
    DM.QrySelct.SQL.Clear;
    DM.QrySelct.SQL.Add('SELECT * FROM Message_user_recent ');
    DM.QrySelct.SQL.Add('WHERE id_user = ' + Inttostr(UserIdChatOnline));
    DM.QrySelct.Open();
    if (DM.QrySelct.RecordCount <> 0) then
    begin
      if ((DM.QrySelct.FieldByName('name_user').AsString <> UserNameChatOnline)
        or (DM.QrySelct.FieldByName('avatar_user').AsInteger <>
        UserIdChatOnline)) then
      begin
        try
          DM.QrySelct.Edit;
          DM.QrySelct.FieldByName('name_user').AsString := UserNameChatOnline;
          DM.QrySelct.FieldByName('avatar_user').AsInteger :=
            StrToInt(AvatarId);
          DM.QrySelct.Post;
        except
          DM.QrySelct.Cancel;
        end;
      end;
      AddListMsg;
    end;
  end;
  if (Text18.Text = UserNameChatOnline) then
  begin
    Text19.Text := 'Connecté';
    Text20.Text :=
      'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
    Rectangle21.Visible := false;
  end
  else
  begin
    Text19.Text := 'Non Connecté';
    Text20.Text := 'Vous êtes actuellement connecté à ' + UserNameChatOnline +
      ',En cliquant sur SE CONNECTER, votre connexion avec ' +
      UserNameChatOnline + ' sera interrompue.';
    Rectangle21.Visible := True;
  end;
end;

procedure TForm1.ksTableView1Gesture(Sender: TObject;
const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if (EventInfo.GestureID = sgiLeft) then
  begin
    MultiView1.Enabled := false;
    TabReturn := ChangeTabAction1;
    ChangeTabAction2.ExecuteTarget(Sender);
  end;
end;

procedure TForm1.ksTableView1ItemClick(Sender: TObject; x, y: Single;
AItem: TksTableViewItem; AId: string; ARowObj: TksTableViewItemObject);

begin
  TabReturn := ChangeTabAction1;
  MultiView1.Enabled := false;
  Text18.Text := ksTableView1.Items[ksTableView1.ItemIndex].Title.Text;
  if ManagerConnected then
  begin
    Actualisateur := True;
    if ((chatOnline = True) and (UserNameChatOnline = ksTableView1.Items
      [ksTableView1.ItemIndex].Title.Text)) then
    begin
      Text20.Text :=
        'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
      SpeedButton8.Text := 'SE CONNECTER';
      Rectangle21.Visible := false;
      ListBoxItem6.Text := 'Se déconnecter';
      Text19.Text := 'Connecté';
      SpeedButton6.StyleLookup := 'detailstoolbutton';
      // Get Mac adresse User Name
      GetMacAdressUserName;
      MacUser := GetMacAdressUserName;
      AdressMac := MacUser;
      AddAllMessage(UserIdChatOnline);
      SelectDeviceListe(MacUser);
    end
    else
    begin
      if ((chatOnline = True) and (UserNameChatOnline <> ksTableView1.Items
        [ksTableView1.ItemIndex].Title.Text)) then
      begin
        Text20.Text := 'Vous êtes actuellement connecté à ' + UserNameChatOnline
          + ',En cliquant sur SE CONNECTER, votre connexion avec ' +
          UserNameChatOnline + ' sera interrompue.';
        SpeedButton8.Text := 'SE CONNECTER';
        Rectangle21.Visible := True;
        ListBoxItem6.Text := 'Se Connecter';
        Text19.Text := 'Non Connecté';
        SpeedButton6.StyleLookup := 'detailstoolbutton';
        // Get Mac adresse User Name
        GetMacAdressUserName;
        MacUser := GetMacAdressUserName;
        AdressMac := MacUser;
        (* Prise de l'id du user *)
        // ----------------------------------------------------------------------
        GetIdUserOffline('', AdressMac);
        (* Ajout des messsages de l'utilisateur *)
        // ------------------------------------------------------------------------
        ksChatView1.Clear;
        AddAllMessage(StrToInt(UserInfonOffline[1]));
      end
      else
      begin
        Text20.Text :=
          'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
        Text19.Text := 'Non Connecté';
        SpeedButton8.Text := 'SE CONNECTER';
        Rectangle21.Visible := True;
        ListBoxItem6.Text := 'Se Connecter';
        Text19.Text := 'Non Connecté';
        SpeedButton6.StyleLookup := 'detailstoolbutton';
        // Get Mac adresse User Name
        GetMacAdressUserName;
        MacUser := GetMacAdressUserName;
        AdressMac := MacUser;
        (* Prise de l'id du user *)
        // ----------------------------------------------------------------------
        GetIdUserOffline('', AdressMac);
        (* Ajout des messsages de l'utilisateur *)
        // ------------------------------------------------------------------------
        ksChatView1.Clear;
        AddAllMessage(StrToInt(UserInfonOffline[1]));

      end;

    end;
  end
  else
  begin
    Actualisateur := false;
    Text20.Text :=
      'Activez votre Bluetooth et connectez-vous à cet utilisateur enfin de chater ensemble.';
    SpeedButton8.Text := 'ACTIVER';
    Rectangle21.Visible := True;
    ListBoxItem6.Text := 'Se Connecter';
    // SpeedButton6.StyleLookup := 'refreshtoolbutton';
    // Get Mac adresse User Name
    GetMacAdressUserName;
    MacUser := GetMacAdressUserName;
    AdressMac := MacUser;
    (* Prise de l'id du user *)
    // ----------------------------------------------------------------------
    GetIdUserOffline('', AdressMac);
    (* Ajout des messsages de l'utilisateur *)
    // ------------------------------------------------------------------------
    ksChatView1.Clear;
    AddAllMessage(StrToInt(UserInfonOffline[1]));
  end;
end;

procedure TForm1.ksTableView2Gesture(Sender: TObject;
const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  // gestion defilement
  if (EventInfo.GestureID = sgiRight) then
  begin
    ChangeTabAction1.ExecuteTarget(Sender);
    MultiView1.Enabled := True;
  end;
end;

procedure TForm1.ksTableView2ItemClick(Sender: TObject; x, y: Single;
AItem: TksTableViewItem; AId: string; ARowObj: TksTableViewItemObject);
begin
  TabReturn := ChangeTabAction2;
  NumeroUserListDevice := ksTableView2.ItemIndex;
  (* Verification de la connectivité de l'application au Bluetooth du phone *)
  // ---------------------------------------------------------------------------
  if ManagerConnected then
  begin
    (* Verifier si l'utilisateur actuellement choisi est en ligne *)
    // --------------------------------------------------------------------------
    if ((chatOnline = True) and (UserDeviceNameChatOnline = ksTableView2.Items
      [ksTableView2.ItemIndex].Title.Text)) then
    begin
      (* Get deviceName User, vu que l'utilisateur est actuellement en ligne
        faire aucune modification *)
      // ----------------------------------------------------------------------
      (* Information statut en ligne *)
      // ------------------------------------------------------------------------
      SpeedButton8.Text := 'SE CONNECTER';
      Rectangle21.Visible := false;
      Text19.Text := 'Connecté';
      ListBoxItem6.Text := 'Se déconnecter';
      SpeedButton6.StyleLookup := 'detailstoolbutton';
      // Get Mac adresse User Name
      MacUser := ksTableView2.Items[NumeroUserListDevice].SubTitle.Text;
      AdressMac := ksTableView2.Items[NumeroUserListDevice].SubTitle.Text;
      (* Ajout des messsages de l'utilisateur *)
      // ------------------------------------------------------------------------
      ksChatView1.Clear;
      AddAllMessage(UserIdChatOnline);
      Text18.Text := UserNameChatOnline;
      AddAllMessage(UserIdChatOnline);
      SelectDeviceListe(MacUser);
    end
    else
    begin
      if ((chatOnline = True) and (UserDeviceNameChatOnline <>
        ksTableView2.Items[ksTableView2.ItemIndex].Title.Text)) then
      begin
        (* l'utilisateur non connecté *)
        // -----------------------------------------------------------------------
        Text20.Text := 'Vous êtes actuellement connecté à ' + UserNameChatOnline
          + ',En cliquant sur SE CONNECTER, votre connexion avec ' +
          UserNameChatOnline + ' sera interrompue.';
        Text19.Text := 'Non Connecté';
        SpeedButton8.Text := 'SE CONNECTER';
        Rectangle21.Visible := True;
        ListBoxItem6.Text := 'Se Connecter';
        SpeedButton6.StyleLookup := 'detailstoolbutton';
        (* Prise de l'id du user *)
        // ----------------------------------------------------------------------
        GetIdUserOffline(ksTableView2.Items[ksTableView2.ItemIndex].Title.Text,
          ksTableView2.Items[ksTableView2.ItemIndex].SubTitle.Text);
        // Get Mac adresse User Name
        MacUser := ksTableView2.Items[NumeroUserListDevice].SubTitle.Text;
        AdressMac := ksTableView2.Items[NumeroUserListDevice].SubTitle.Text;
        (* Ajout des messsages de l'utilisateur *)
        // ------------------------------------------------------------------------
        ksChatView1.Clear;
        AddAllMessage(StrToInt(UserInfonOffline[1]));
      end
      else
      begin
        (* l'utilisateur non connecté *)
        // -----------------------------------------------------------------------
        Text20.Text :=
          'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
        Text19.Text := 'Non Connecté';
        SpeedButton8.Text := 'SE CONNECTER';
        Rectangle21.Visible := True;
        ListBoxItem6.Text := 'Se Connecter';
        SpeedButton6.StyleLookup := 'detailstoolbutton';
        (* Prise de l'id du user non en ligne *)
        // ----------------------------------------------------------------------
        GetIdUserOffline(ksTableView2.Items[ksTableView2.ItemIndex].Title.Text,
          ksTableView2.Items[ksTableView2.ItemIndex].SubTitle.Text);
        (* selection de l'utilisateur courant *)
        // --------------------------------------------------------------------
        // Get Mac adresse User Name
        MacUser := ksTableView2.Items[NumeroUserListDevice].SubTitle.Text;
        AdressMac := ksTableView2.Items[NumeroUserListDevice].SubTitle.Text;
        (* Ajout des messsages de l'utilisateur *)
        // ---------------------------------------------------------------------
        ksChatView1.Clear;
        AddAllMessage(StrToInt(UserInfonOffline[1]));
      end;

    end;
  end
  else
  begin
    Text20.Text :=
      'Activez votre Bluetooth et connectez-vous à cet utilisateur enfin de chater ensemble.';
    SpeedButton8.Text := 'ACTIVER';
    Rectangle21.Visible := True;
    ListBoxItem6.Text := 'Se Connecter';
    // SpeedButton6.StyleLookup := 'refreshtoolbutton';
    (* Prise de l'id du user non en ligne *)
    // ----------------------------------------------------------------------
    GetIdUserOffline(ksTableView2.Items[ksTableView2.ItemIndex].Title.Text,
      ksTableView2.Items[ksTableView2.ItemIndex].SubTitle.Text);
    AdressMac := UserInfonOffline[3];
    (* Ajout des messsages de l'utilisateur *)
    // ---------------------------------------------------------------------
    ksChatView1.Clear;
    AddAllMessage(StrToInt(UserInfonOffline[1]));
  end;

end;

procedure TForm1.ksTableView3ItemClick(Sender: TObject; x, y: Single;
AItem: TksTableViewItem; AId: string; ARowObj: TksTableViewItemObject);
begin
  if ManagerConnected then
    if ksTableView3.Items.Count > 0 then
      FAdapter.Pair(FDiscoverDevices[ksTableView3.ItemIndex])
    else
      ShowMessage('Pas de périphériques !');
end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  SpeedButton10.OnClick(Sender);
  ChangeTabAction2.ExecuteTarget(Sender);
  MultiView1.Enabled := false;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
  SpeedButton10.OnClick(Sender);
  MyInformationProfil;
  ChangeTabAction4.ExecuteTarget(Sender);
  MultiView1.Enabled := false;
end;

procedure TForm1.ListBoxItem4Click(Sender: TObject);
begin
  SpeedButton10.OnClick(Sender);
  Rectangle3.Visible := True;
  Panel4.Visible := True;
end;

procedure TForm1.ListBoxItem5Click(Sender: TObject);
begin
  SpeedButton10.OnClick(Sender);
  ChangeTabAction5.ExecuteTarget(Sender);
  MultiView1.Enabled := false;
end;

procedure TForm1.ListBoxItem6Click(Sender: TObject);
begin
  if (ListBoxItem6.Text = 'Se connecter') then
  begin
    if ManagerConnected then
    begin
      if (chatOnline = false) then
      begin
        try
          SelectDeviceListe(AdressMac);
          ItemIndex := -6;
          LeMessage := 'CONNECT';
          SendData;
        except
          on E: Exception do
          begin
            ShowMessage('Impossible de se connecter à cet utilisateu !');
            chatOnline := false;
            FreeAndNil(FSocket);
          end;
        end
      end
      else
      begin
        try
          FreeAndNil(FSocket);
          SelectDeviceListe(AdressMac);
          ItemIndex := -6;
          LeMessage := 'CONNECT';
          SendData;
        except
          on E: Exception do
          begin
            ShowMessage('Impossible de se connecter à cet utilisateu !');
            chatOnline := false;
          end;
        end;
      end;

    end
    else
    begin
      EtatBluetooth := false;
      Panel1.Visible := false;
      Panel3.Visible := True;
      ShowMessage('Votre Bluetooth est inactif !');
    end;
  end
  else
  begin
    // Deconnection
    FreeSocket;
    chatOnline := false;
    Text19.Text := 'Non connecté';
    Rectangle21.Visible := True;
    SendMyInfo := false;
    UserInfonOffline[1] := Inttostr(Form1.UserIdChatOnline);
    UserInfonOffline[2] := Form1.UserDeviceNameChatOnline;
    UserInfonOffline[3] := Form1.UserMacAdrresseChatOnline;
    UserInfonOffline[4] := Inttostr(Form1.UserAvatarChatOnline);
    UserInfonOffline[5] := Form1.UserNameChatOnline;
    UserIdChatOnline := 0;
    UserDeviceNameChatOnline := '';
    UserMacAdrresseChatOnline := '';
    UserAvatarChatOnline := 0;
    UserNameChatOnline := '';
    NotificationConnexionDeconnexion(false);
    ListBoxItem6.Text := 'Se connecter'
  end;
  Layout42.Visible := false;
  Rectangle3.Visible := false;
end;

procedure TForm1.ListBoxItem7Click(Sender: TObject);
begin
  Layout42.Visible := false;
  Rectangle3.Visible := false;
  TabReturn.ExecuteTarget(Sender);
  MultiView1.Enabled := True;
end;

function TForm1.ManagerConnected: Boolean;
begin
  // verification de la connexion bluetooth
  if FBluetoothManager.ConnectionState = TBluetoothConnectionState.Connected
  then
  begin
    Result := True;
    Panel3.Visible := false;
    Panel1.Visible := True;
    EtatBluetooth := True;
    MyDeviceName := FBluetoothManager.CurrentAdapter.AdapterName;
  end
  else
  begin

    Result := false;
    EtatBluetooth := false;
    Panel1.Visible := false;
    Panel3.Visible := True;
    Paired := false;
  end
end;

procedure TForm1.Memo1ViewportPositionChange(Sender: TObject;
const OldViewportPosition, NewViewportPosition: TPointF;
const ContentSizeChanged: Boolean);
begin
  if (Layout23.Height <= 100) then
    Layout23.Height := Layout23.Height + 1;
  if (Layout25.Align = TAlignLayout.Client) then
    Layout25.Align := TAlignLayout.Bottom;
end;

procedure TForm1.MultiView1Hidden(Sender: TObject);
begin
  ListBox1.ItemIndex := -1;
end;

procedure TForm1.MyInformationProfil;
begin
  MyInfo[1] := DM.Tprofil.FieldByName('nom_compte').AsString;
  MyInfo[2] := DM.Tprofil.FieldByName('device_name').AsString;
  MyInfo[3] := DM.Tprofil.FieldByName('avatar_id').AsString;
  MyInfo[4] := DM.Tprofil.FieldByName('mac_adress').AsString;
  Text7.Text := DM.Tprofil.FieldByName('nom_compte').AsString + '(' +
    DM.Tprofil.FieldByName('device_name').AsString + ')';
  Text22.Text := DM.Tprofil.FieldByName('nom_compte').AsString + '(' +
    DM.Tprofil.FieldByName('device_name').AsString + ')';
  Edit2.Text := DM.Tprofil.FieldByName('nom_compte').AsString;
  Edit3.Text := DM.Tprofil.FieldByName('device_name').AsString;
  NameCompte := DM.Tprofil.FieldByName('nom_compte').AsString;
  MyDeviceName := DM.Tprofil.FieldByName('device_name').AsString;
  MyAvatarID := DM.Tprofil.FieldByName('avatar_id').AsInteger;
  MyMacAdress := DM.Tprofil.FieldByName('mac_adress').AsString;
  Circle6.Fill.Bitmap.Bitmap := ListImg.MultiResBitmap[MyAvatarID].Bitmap;
  Circle1.Fill.Bitmap.Bitmap := ListImg.MultiResBitmap[MyAvatarID].Bitmap;
  (* selection profil *)
  case MyAvatarID of
    0:
      begin
        Rectangle10.Visible := True;
        Rectangle11.Visible := false;
        Rectangle12.Visible := false;
        Rectangle13.Visible := false;
        Rectangle14.Visible := false;
        Rectangle15.Visible := false;
      end;
    1:
      begin
        Rectangle11.Visible := True;
        Rectangle10.Visible := false;
        Rectangle12.Visible := false;
        Rectangle13.Visible := false;
        Rectangle14.Visible := false;
        Rectangle15.Visible := false;
      end;
    2:
      begin
        Rectangle12.Visible := True;
        Rectangle11.Visible := false;
        Rectangle10.Visible := false;
        Rectangle13.Visible := false;
        Rectangle14.Visible := false;
        Rectangle15.Visible := false;
      end;
    3:
      begin
        Rectangle13.Visible := True;
        Rectangle11.Visible := false;
        Rectangle12.Visible := false;
        Rectangle10.Visible := false;
        Rectangle14.Visible := false;
        Rectangle15.Visible := false;
      end;
    4:
      begin
        Rectangle14.Visible := True;
        Rectangle11.Visible := false;
        Rectangle12.Visible := false;
        Rectangle13.Visible := false;
        Rectangle10.Visible := false;
        Rectangle15.Visible := false;
      end;
  else
    begin
      Rectangle15.Visible := True;
      Rectangle11.Visible := false;
      Rectangle12.Visible := false;
      Rectangle13.Visible := false;
      Rectangle14.Visible := false;
      Rectangle10.Visible := false;
    end;
  end;
end;

procedure TForm1.NotificationCenter1ReceiveLocalNotification(Sender: TObject;
ANotification: TNotification);
begin
  if (chatOnline = True) then
  begin
    if (TabItem3.IsSelected = false) then
    begin
      Timer2.Enabled := True;
      Layout43.Visible := True;
      Rectangle3.Visible := True;
      TabReturn := ChangeTabAction1;
      Rectangle21.Visible := false;
      Text19.Text := 'Connecté';
      ListBoxItem6.Text := 'Se déconnecter';
      SpeedButton6.StyleLookup := 'detailstoolbutton';
      VerificationUser(UserDeviceNameChatOnline, UserMacAdrresseChatOnline);
      AddAllMessage(UserIdChatOnline);
      SelectDeviceListe(UserMacAdrresseChatOnline);
    end;
  end
  else
  begin
    TabReturn := ChangeTabAction1;
    ChangeTabAction2.ExecuteTarget(Sender);
  end;
end;

procedure TForm1.NotificationConnexionDeconnexion(ConnectPhone: Boolean);
var
  Notification: TNotification;
begin
  if (ConnectPhone = True) then
  begin
    Notification := NotificationCenter1.CreateNotification;
    try
      Notification.Name := 'Nouvelle connexion';
      Notification.AlertBody := 'Vous etes actuellement connecté à ' +
        UserNameChatOnline;
      Notification.FireDate := Now;
      NotificationCenter1.PresentNotification(Notification);
    finally
      Notification.DisposeOf;
    end;
  end
  else
  begin
    NotificationCenter1.CancelNotification('Nouvelle connexion');
    Notification := NotificationCenter1.CreateNotification;
    try
      Notification.Name := 'Non connecté !';
      Notification.AlertBody := 'se connecter à un utilisateur ';
      Notification.FireDate := Now;
      NotificationCenter1.PresentNotification(Notification);
    finally
      Notification.DisposeOf;
    end;
  end;
end;

procedure TForm1.OpenGitHub;
{$IF Defined(MSWINDOWS)}
var
  SW_SHOWNORMAL: Integer;
{$ENDIF}
begin
{$IF Defined(ANDROID)}
  WebPage.OpenPage.Ouvrir
    ('https://github.com/Bope142/Chat_Application_Delphi.git');
{$ELSEIF Defined(MSWINDOWS)}
  ShellExecute(0, 'OPEN',
    PWideChar('https://github.com/Bope142/Chat_Application_Delphi.git'), Nil,
    Nil, SW_SHOWNORMAL);
{$ENDIF};
end;

procedure TForm1.PairedDevices;
var
  I: Integer;
  AIcon: TBitmap;
begin
  // Appareils déjà jumelé
  if ManagerConnected then
  begin
    FPairedDevices := FBluetoothManager.GetPairedDevices;
    if FPairedDevices.Count > 0 then
    begin
      ksTableView2.ClearItems;
      ComboBox2.Clear;
      for I := 0 to FPairedDevices.Count - 1 do
      begin
        AIcon := Image25.Bitmap;
        ksTableView2.Items.AddItem(FPairedDevices[I].DeviceName,
          FPairedDevices[I].Address, 'Lancer un chat', atMore)
          .Image.Bitmap := AIcon;
        ComboBox2.Items.Add(FPairedDevices[I].DeviceName)
      end;
    end
    else
      ksTableView2.ClearItems;
  end;
end;

procedure TForm1.Rectangle10Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle10, false);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle15, false);
end;

procedure TForm1.Rectangle11Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle10, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle15, false);
end;

procedure TForm1.Rectangle12Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle10, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle15, false);
end;

procedure TForm1.Rectangle13Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle10, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle15, false);
end;

procedure TForm1.Rectangle14Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle10, false);
  EffetSelectAvatar(Rectangle15, false);
end;

procedure TForm1.Rectangle15Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle15, false);
end;

procedure TForm1.Rectangle9Click(Sender: TObject);
begin
  EffetSelectAvatar(Rectangle15, false);
  EffetSelectAvatar(Rectangle11, false);
  EffetSelectAvatar(Rectangle12, false);
  EffetSelectAvatar(Rectangle13, false);
  EffetSelectAvatar(Rectangle14, false);
  EffetSelectAvatar(Rectangle10, false);
end;

procedure TForm1.SaveInfosMyProfil;
begin
  if (DM.Tprofil.RecordCount = 0) then
  begin
    MyMacAdress := UpperCase(Edit4.Text);
    try
      DM.Tprofil.append;
      DM.Tprofil.FieldByName('nom_compte').AsString := Edit1.Text;
      DM.Tprofil.FieldByName('device_name').AsString := MyDeviceName;
      DM.Tprofil.FieldByName('avatar_id').AsInteger := MyAvatarID;
      DM.Tprofil.FieldByName('mac_adress').AsString := trim(MyMacAdress);
      DM.Tprofil.Post;
      MyInformationProfil;
    except
      on E: Exception do
        DM.Tprofil.Cancel;
    end;
  end
  else
  begin
    if (DM.Tprofil.FieldByName('device_name').AsString = '') then
    begin
      if ManagerConnected then
      begin
        try
          DM.Tprofil.Edit;
          DM.Tprofil.FieldByName('device_name').AsString := MyDeviceName;
          DM.Tprofil.Post;
          MyInformationProfil;
        except
          on E: Exception do
            DM.Tprofil.Cancel;
        end;
      end;
    end
    else
    begin
      if ((ManagerConnected) and (DM.Tprofil.FieldByName('device_name').AsString
        <> MyDeviceName)) then
      begin
        try
          DM.Tprofil.Edit;
          DM.Tprofil.FieldByName('device_name').AsString := MyDeviceName;
          DM.Tprofil.Post;
          MyInformationProfil;
        except
          on E: Exception do
            DM.Tprofil.Cancel;
        end;
      end
    end;
  end;
end;

procedure TForm1.saveRecentMessage(IdUser: Integer);
var
  MessageRecent: string;
begin
  DM.QrySelct.Close;
  DM.QrySelct.SQL.Clear;
  DM.QrySelct.SQL.Add('SELECT * FROM Message_user_recent ');
  DM.QrySelct.SQL.Add('WHERE id_user = ' + Inttostr(IdUser));
  DM.QrySelct.Open();
  if (DM.QrySelct.RecordCount <> 0) then
  begin
    if (LastDiscuionUSerOline <> '') then
    begin
      MessageRecent := LastDiscuionUSerOline;
    end
    else
    begin
      MessageRecent := DM.QrySelct.FieldByName('details_recent_msg').AsString;
    end;
    try
      DM.QrySelct.Edit;
      DM.QrySelct.FieldByName('avatar_user').AsInteger := UserAvatarChatOnline;
      DM.QrySelct.FieldByName('name_user').AsString := UserNameChatOnline;
      DM.QrySelct.FieldByName('details_recent_msg').AsString := MessageRecent;
      DM.QrySelct.FieldByName('datetimes').AsDateTime := Now;
      DM.QrySelct.Post;
      AddListMsg;
    except
      DM.QrySelct.Cancel;
    end;

  end
  else
  begin
    if (LastDiscuionUSerOline <> '') then
    begin
      MessageRecent := LastDiscuionUSerOline;
      try
        DM.QrySelct.append;
        DM.QrySelct.FieldByName('id_user').AsInteger := UserIdChatOnline;
        DM.QrySelct.FieldByName('avatar_user').AsInteger :=
          UserAvatarChatOnline;
        DM.QrySelct.FieldByName('name_user').AsString := UserNameChatOnline;
        DM.QrySelct.FieldByName('details_recent_msg').AsString := MessageRecent;
        DM.QrySelct.Post;
        AddListMsg;
      except
        DM.QrySelct.Cancel;
      end;
    end
  end;

end;

procedure TForm1.SaveRecievedMsg(IdUser: Integer; Msg: string);
var
  IdMesg: Integer;
  NotificationMsg: TNotification;
  MessageNotification: string;
begin
  MessageNotification := Msg;
  (* Enregistrement du message envoyé dans la base des données *)
  // ----------------------------------------------------------------------------
  if (TabItem3.IsSelected) then
  begin
    if (Text18.Text = UserNameChatOnline) then
    begin
      Form1.Rectangle21.Visible := false;
      Form1.Text19.Text := 'Connecté';
    end
    else
    begin
      Form1.Rectangle21.Visible := True;
      Form1.Text19.Text := 'Non Connecté';
    end;
  end;
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('SELECT * FROM Message_Send ');
  DM.Qry.SQL.Add('WHERE id_user = ' + Inttostr(IdUser));
  DM.Qry.SQL.Add(' AND  is_first_msg = 1 ');
  DM.Qry.Open();
  if (DM.Qry.RecordCount = 0) then
  begin
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('SELECT * FROM Message_recu ');
    DM.Qry.SQL.Add('WHERE id_user = ' + Inttostr(IdUser));
    DM.Qry.SQL.Add(' AND  is_first_msg = 1 ');
    DM.Qry.Open();
    if (DM.Qry.RecordCount = 0) then
    begin
      try
        DM.Tmsg_rec.append;
        DM.Tmsg_rec.FieldByName('id_user').AsInteger := IdUser;
        DM.Tmsg_rec.FieldByName('msg').AsString := Msg;
        DM.Tmsg_rec.FieldByName('id_msg_send').AsInteger := 0;
        DM.Tmsg_rec.FieldByName('is_first_msg').AsBoolean := True;
        DM.Tmsg_rec.Post;
        Msg := Msg + #13 + #13 + Timetostr(Time);
      except
        DM.Tmsg_rec.Cancel;
      end;
    end
    else
    begin
      DM.QrySelct.Close;
      DM.QrySelct.SQL.Clear;
      DM.QrySelct.SQL.Add('SELECT * FROM Message_Send ');
      DM.QrySelct.SQL.Add('WHERE id_user = ' + Inttostr(IdUser));
      DM.QrySelct.Open();
      DM.QrySelct.Last;
      if (DM.QrySelct.RecordCount = 0) then
      begin
        IdMesg := 0;
      end
      else
      begin
        IdMesg := DM.QrySelct.FieldByName('id_msg_recu').AsInteger;
      end;
      try
        DM.Tmsg_rec.append;
        DM.Tmsg_rec.FieldByName('id_user').AsInteger := IdUser;
        DM.Tmsg_rec.FieldByName('msg').AsString := Msg;
        DM.Tmsg_rec.FieldByName('id_msg_send').AsInteger := IdMesg;
        DM.Tmsg_rec.FieldByName('is_first_msg').AsBoolean := false;
        DM.Tmsg_rec.Post;
        Msg := Msg + #13 + #13 + Timetostr(Time);
      except
        DM.Tmsg_rec.Cancel;
      end;
    end;
  end
  else
  begin
    (* verifier s'il y'a des messages envoyé correspondant à ce message *)
    // -----------------------------------------------------------------------
    DM.QrySelct.Close;
    DM.QrySelct.SQL.Clear;
    DM.QrySelct.SQL.Add('SELECT * FROM Message_Send ');
    DM.QrySelct.SQL.Add('WHERE id_user = ' + Inttostr(IdUser));
    DM.QrySelct.Open();
    DM.QrySelct.Last;
    if (DM.QrySelct.RecordCount = 0) then
    begin
      IdMesg := 0;
    end
    else
    begin
      IdMesg := DM.QrySelct.FieldByName('id_msg_recu').AsInteger;
    end;
    try
      DM.Tmsg_rec.append;
      DM.Tmsg_rec.FieldByName('id_user').AsInteger := IdUser;
      DM.Tmsg_rec.FieldByName('msg').AsString := Msg;
      DM.Tmsg_rec.FieldByName('id_msg_send').AsInteger := IdMesg;
      DM.Tmsg_rec.FieldByName('is_first_msg').AsBoolean := false;
      DM.Tmsg_rec.Post;
      Msg := Msg + #13 + #13 + Timetostr(Time);
    except
      DM.Tmsg_rec.Cancel;
    end;
  end;
  if (TabItem3.IsSelected) then
  begin
    if (Text18.Text = UserNameChatOnline) then
    begin
      if (FicheHide = false) then
      begin
        ksChatView1.AddChatBubble(Msg,
          TksTableViewChatBubblePosition.ksCbpRight, $FFBABDC1, claBlack,
          ListImg.MultiResBitmap[UserAvatarChatOnline].Bitmap);
      end
      else
      begin
        NotificationCenter1.CancelNotification('Nouvelle connexion');
        NotificationMsg := NotificationCenter1.CreateNotification;
        try
          NotificationMsg.Name := 'Nouveau Message';
          NotificationMsg.Title := UserNameChatOnline;
          NotificationMsg.AlertBody := MessageNotification;
          NotificationMsg.FireDate := Now;
          NotificationCenter1.PresentNotification(NotificationMsg);
        finally
          NotificationMsg.DisposeOf;
        end;
      end;
    end
    else
    begin
      NotificationCenter1.CancelNotification('Nouvelle connexion');
      NotificationMsg := NotificationCenter1.CreateNotification;
      try
        NotificationMsg.Name := 'Nouveau Message';
        NotificationMsg.Title := UserNameChatOnline;
        NotificationMsg.AlertBody := MessageNotification;
        NotificationMsg.FireDate := Now;
        NotificationCenter1.PresentNotification(NotificationMsg);
      finally
        NotificationMsg.DisposeOf;
      end;
    end;
  end
  else
  begin
    NotificationCenter1.CancelNotification('Nouvelle connexion');
    NotificationMsg := NotificationCenter1.CreateNotification;
    try
      NotificationMsg.Name := 'Nouveau Message';
      NotificationMsg.Title := UserNameChatOnline;
      NotificationMsg.AlertBody := MessageNotification;
      NotificationMsg.FireDate := Now;
      NotificationCenter1.PresentNotification(NotificationMsg);
    finally
      NotificationMsg.DisposeOf;
    end;
  end;
  begin
    saveRecentMessage(Form1.UserIdChatOnline);
  end;

end;

procedure TForm1.SaveSendMsg(IdUser: Integer; Msg: string);
var
  IdMesg: Integer;
begin
  (* Enregistrement du message envoyé dans la base des données *)
  // ----------------------------------------------------------------------------
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('SELECT * FROM Message_recu ');
  DM.Qry.SQL.Add('WHERE id_user = ' + Inttostr(IdUser));
  DM.Qry.SQL.Add(' AND  is_first_msg = 1');
  DM.Qry.Open();
  if (DM.Qry.RecordCount = 0) then
  begin
    DM.Qry.Close;
    DM.Qry.SQL.Clear;
    DM.Qry.SQL.Add('SELECT * FROM Message_Send ');
    DM.Qry.SQL.Add('WHERE id_user = ' + Inttostr(IdUser));
    DM.Qry.SQL.Add(' AND  is_first_msg = 1 ');
    DM.Qry.Open();
    if (DM.Qry.RecordCount = 0) then
    begin
      try
        DM.Tmsg_send.append;
        DM.Tmsg_send.FieldByName('id_user').AsInteger := IdUser;
        DM.Tmsg_send.FieldByName('msg').AsString := Msg;
        DM.Tmsg_send.FieldByName('id_msg_recu').AsInteger := 1;
        DM.Tmsg_send.FieldByName('is_first_msg').AsBoolean := True;
        DM.Tmsg_send.Post;
        Msg := Msg + #13 + #13 + Timetostr(Time);
      except
        DM.Tmsg_send.Cancel;
      end;
    end
    else
    begin
      // -----------------------------------------------------------------------
      DM.QrySelct.Close;
      DM.QrySelct.SQL.Clear;
      DM.QrySelct.SQL.Add('SELECT * FROM Message_Send ');
      DM.QrySelct.SQL.Add('WHERE id_user = ' + Inttostr(IdUser));
      DM.QrySelct.Open();
      DM.QrySelct.Last;
      if (DM.QrySelct.RecordCount = 0) then
      begin
        IdMesg := 1;
      end
      else
      begin
        IdMesg := DM.QrySelct.FieldByName('id_msg_recu').AsInteger + 1;
      end;
      try
        DM.Tmsg_send.append;
        DM.Tmsg_send.FieldByName('id_user').AsInteger := IdUser;
        DM.Tmsg_send.FieldByName('msg').AsString := Msg;
        DM.Tmsg_send.FieldByName('id_msg_recu').AsInteger := IdMesg;
        DM.Tmsg_send.FieldByName('is_first_msg').AsBoolean := false;
        DM.Tmsg_send.Post;
        Msg := Msg + #13 + #13 + Timetostr(Time);
      except
        DM.Tmsg_send.Cancel;
      end;
    end;
  end
  else
  begin
    // -----------------------------------------------------------------------
    DM.QrySelct.Close;
    DM.QrySelct.SQL.Clear;
    DM.QrySelct.SQL.Add('SELECT * FROM Message_Send ');
    DM.QrySelct.SQL.Add('WHERE id_user = ' + Inttostr(IdUser));
    DM.QrySelct.Open();
    DM.QrySelct.Last;
    if (DM.QrySelct.RecordCount = 0) then
    begin
      IdMesg := 1;
    end
    else
    begin
      IdMesg := DM.QrySelct.FieldByName('id_msg_recu').AsInteger + 1;
    end;
    try
      DM.Tmsg_send.append;
      DM.Tmsg_send.FieldByName('id_user').AsInteger := IdUser;
      DM.Tmsg_send.FieldByName('msg').AsString := Msg;
      DM.Tmsg_send.FieldByName('id_msg_recu').AsInteger := IdMesg;
      DM.Tmsg_send.FieldByName('is_first_msg').AsBoolean := false;
      DM.Tmsg_send.Post;
      Msg := Msg + #13 + #13 + Timetostr(Time);
    except
      DM.Tmsg_send.Cancel;
    end;
  end;
  if (TabItem3.IsSelected) then
  begin
    ksChatView1.AddChatBubble(Msg, TksTableViewChatBubblePosition.ksCbpLeft,
      MyColorBulleChat, claWhite, Circle6.Fill.Bitmap.Bitmap);
  end;
  if (Msg <> '') then
  begin
    saveRecentMessage(UserIdChatOnline);
  end;
end;

procedure TForm1.SelectDeviceListe(MacAdress: string);
var
  I: Integer;
begin
  if (ksTableView2.Items.Count > 0) then
  begin
    for I := 0 to ksTableView2.Items.Count - 1 do
    begin
      ksTableView2.ItemIndex := I;
      try
        if (ksTableView2.Items[ksTableView2.ItemIndex].SubTitle.Text = MacAdress)
        then
        begin
          ComboBox2.ItemIndex := I;
          ksTableView2.ItemIndex := I;
          Break
        end;
      except

      end

    end;

  end;
end;

procedure TForm1.SendData;
var
  ToSend: TBytes;
  LDevice: TBluetoothDevice;
begin
  if (FSocket = nil) or (ItemIndex <> ComboBox2.ItemIndex) then
  begin
    if ComboBox2.ItemIndex > -1 then
    begin
      LDevice := FPairedDevices[ComboBox2.ItemIndex] as TBluetoothDevice;
      FSocket := LDevice.CreateClientSocket(StringToGUID(ServiceGUI), false);
      if FSocket <> nil then
      begin
        try
          ItemIndex := ComboBox2.ItemIndex;
          FSocket.Connect;
          chatOnline := True;
          ListBoxItem6.Text := 'Se déconnecter';
          if (LeMessage = 'CONNECT') then
          begin
            MyInformationProfil;
            LeMessage := LeMessage + ':' + MyInfo[1] + ':' + MyInfo[2] + ':' +
              MyInfo[3] + ':' + MyInfo[4];
            ToSend := TEncoding.UTF8.GetBytes(LeMessage);
            FSocket.SendData(ToSend);
            SendMyInfo := True;
            LeMessage := 'CONNECT';

          end
          else
          begin
            LeMessage := LeMessage;
            ToSend := TEncoding.UTF8.GetBytes(LeMessage);
            FSocket.SendData(ToSend);
            SaveSendMsg(UserIdChatOnline, LeMessage);
          end;
        except
          on E: Exception do
          begin
            chatOnline := false;
            Text20.Text :=
              'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
            Text19.Text := 'Non Connecté';
            SpeedButton8.Text := 'SE CONNECTER';
            Rectangle21.Visible := True;
            ListBoxItem6.Text := 'Se Connecter';
            SpeedButton6.StyleLookup := 'detailstoolbutton';
            if (LeMessage = 'CONNECT') then
            begin
              ShowMessage('Impossible de se connecter à cet utilisateur !');
            end;
          end;
        end;
      end
      else
      begin
        ShowMessage('Délai de connexion expiré !');
        chatOnline := false;
        Text20.Text :=
          'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
        Text19.Text := 'Non Connecté';
        SpeedButton8.Text := 'SE CONNECTER';
        Rectangle21.Visible := True;
        ListBoxItem6.Text := 'Se Connecter';
        SpeedButton6.StyleLookup := 'detailstoolbutton';
        Rectangle21.Visible := True;
      end
    end
    else
      ShowMessage('Oups ! Une erreur s’est produite, merci de ressayer');
  end
  else
  begin
    try
      ListBoxItem6.Text := 'Se déconnecter';
      if (LeMessage = 'CONNECT') then
      begin
        MyInformationProfil;
        LeMessage := LeMessage + ':' + MyInfo[1] + ':' + MyInfo[2] + ':' +
          MyInfo[3] + ':' + MyInfo[4];
        ToSend := TEncoding.UTF8.GetBytes(LeMessage);
        FSocket.SendData(ToSend);
        SendMyInfo := True;
        LeMessage := 'CONNECT'; // remise initiale
        chatOnline := True;
      end
      else
      begin
        LeMessage := LeMessage;
        ToSend := TEncoding.UTF8.GetBytes(LeMessage);
        FSocket.SendData(ToSend);
        SaveSendMsg(UserIdChatOnline, LeMessage);
        chatOnline := True;
      end;
      // --------------------------------------------------------------------
      if (Text18.Text = UserNameChatOnline) then
      begin
        Text19.Text := 'Connecté';
        Text20.Text :=
          'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
        Rectangle21.Visible := false;
      end
      else
      begin
        Text19.Text := 'Non Connecté';
        Text20.Text := 'Vous êtes actuellement connecté à ' + UserNameChatOnline
          + ',En cliquant sur SE CONNECTER, votre connexion avec ' +
          UserNameChatOnline + ' sera interrompue.';
        Rectangle21.Visible := True;
      end;
    except
      on E: Exception do
      begin
        Text19.Text := 'Non Connecté';
        chatOnline := false;
        Text20.Text :=
          'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
        Text19.Text := 'Non Connecté';
        SpeedButton8.Text := 'SE CONNECTER';
        Rectangle21.Visible := True;
        ListBoxItem6.Text := 'Se Connecter';
        SpeedButton6.StyleLookup := 'detailstoolbutton';
        Rectangle21.Visible := True;
        if (LeMessage = 'CONNECT') then
        begin
          ShowMessage('Impossible de se connecter à cet utilisateur !');
        end;
      end;
    end;

  end;
end;

procedure TForm1.ShowHideOptionAvatar(valeur: Boolean);
begin
  if (valeur = True) then
  begin
    Panel2.Margins.Left := Form1.Width + 10;
    Panel2.Visible := True;
    FloatAnimation1.StartValue := Form1.Width + 10;
    FloatAnimation1.StopValue := 0;
    Rectangle3.Visible := True;
    Edit2.ReadOnly := True;
    Panel2.BringToFront;
    FloatAnimation1.Start;
    Edit1.Enabled := false;
    Edit4.Enabled := false;
  end
  else
  begin
    FloatAnimation1.StartValue := 0;
    FloatAnimation1.StopValue := Form1.Width + 10;
    FloatAnimation1.Start;
    Edit1.Enabled := True;
    Text3.Text := 'ENREGISTRER';
    Edit2.ReadOnly := false;
    Edit4.Enabled := True;
  end;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  MultiView1.Visible := True;
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
  ShowHideOptionAvatar(True);
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
  if ((Edit2.Text <> DM.Tprofil.FieldByName('nom_compte').AsString) or
    (MyAvatarID <> DM.Tprofil.FieldByName('avatar_id').AsInteger)) then
  begin
    try
      DM.Tprofil.Edit;
      DM.Tprofil.FieldByName('nom_compte').AsString := Edit2.Text;
      DM.Tprofil.FieldByName('avatar_id').AsInteger := MyAvatarID;
      DM.Tprofil.Post;
      MyInformationProfil;
    except
      on E: Exception do
        DM.Tprofil.Cancel;
    end;
  end;
  ChangeTabAction1.ExecuteTarget(Sender);
  MultiView1.Enabled := True;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
  ChangeTabAction1.ExecuteTarget(Sender);
  MultiView1.Enabled := True;
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
  OpenGitHub;
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
  ColorChat;
  Panel4.Visible := false;
  Rectangle3.Visible := false;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if (Rectangle11.IsVisible) then
  begin
    ChangeAvatarImg(1);
  end
  else if (Rectangle12.IsVisible) then
  begin
    ChangeAvatarImg(2);
  end
  else if (Rectangle13.IsVisible) then
  begin
    ChangeAvatarImg(3);
  end
  else if (Rectangle14.IsVisible) then
  begin
    ChangeAvatarImg(4);
  end
  else if (Rectangle15.IsVisible) then
  begin
    ChangeAvatarImg(5);
  end
  else
  begin
    ChangeAvatarImg(0);
  end;
  ShowHideOptionAvatar(false);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  SpeedButton10.OnClick(Sender);
  ChangeTabAction4.ExecuteTarget(Sender);
  MultiView1.Enabled := false;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  AddListMsg;
  MultiView1.Enabled := True;
  ChangeTabAction1.ExecuteTarget(Sender);
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  if ManagerConnected then
  begin
    PairedDevices;
  end
  else
  begin
    try
      FBluetoothManager := TBluetoothManager.Current;
      FAdapter := FBluetoothManager.CurrentAdapter;
      if ManagerConnected then
      begin
        Panel3.Visible := false;
        Panel1.Visible := True;
        EtatBluetooth := True;
        PairedDevices;
        ActivationService;
      end
      else
      begin
        EtatBluetooth := false;
        Panel1.Visible := false;
        Panel3.Visible := True;
      end;
    except
      on E: Exception do
      begin
        EtatBluetooth := false;
        Panel1.Visible := false;
        Panel3.Visible := True;
      end;
    end;
  end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  AddListMsg;
  TabReturn.ExecuteTarget(Sender);
  if (TabReturn = ChangeTabAction1) then
  begin
    MultiView1.Enabled := True;
  end;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  ListBox2.ItemIndex := -1;
  Rectangle3.Visible := True;
  Layout42.Visible := True;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  Panel6.Visible := false;
  Rectangle3.Visible := false;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  if (SpeedButton8.Text = 'SE CONNECTER') then
  begin
    if ManagerConnected then
    begin
      if (chatOnline = false) then
      begin
        try
          SelectDeviceListe(AdressMac);
          ItemIndex := -6;
          LeMessage := 'CONNECT';
          SendData;
        except
          on E: Exception do
          begin
            ShowMessage('Impossible de se connecter à cet utilisateur !');
            chatOnline := false;
            FreeAndNil(FSocket);
          end;
        end
      end
      else
      begin
        try
          FreeAndNil(FSocket);
          SelectDeviceListe(AdressMac);
          ItemIndex := -6;
          LeMessage := 'CONNECT';
          SendData;
        except
          on E: Exception do
          begin
            ShowMessage('Impossible de se connecter à cet utilisateur !');
            chatOnline := false;
          end;
        end;
      end;

    end
    else
    begin
      EtatBluetooth := false;
      Panel1.Visible := false;
      Panel3.Visible := True;
      ShowMessage
        ('Impossible de se connecter à cet utilisateur ! Activez votre Bluetooth.');
    end;
  end
  else
  begin
    FBluetoothManager.EnableBluetooth;
  end
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
  SpeedButton12Click(Sender);
end;

procedure TForm1.Text12Click(Sender: TObject);
begin
  ListBoxItem4.IsSelected := True;
  SpeedButton10.OnClick(Sender);
  Rectangle3.Visible := True;
  Panel4.Visible := True;
end;

procedure TForm1.Text13Click(Sender: TObject);
begin
  ListBoxItem5.IsSelected := True;
  SpeedButton10.OnClick(Sender);
  ChangeTabAction5.ExecuteTarget(Sender);
  MultiView1.Enabled := false;
end;

procedure TForm1.Text16Click(Sender: TObject);
begin
  if ManagerConnected then
  begin
    Rectangle3.Visible := True;
    Layout41.Visible := True;
    ksCircleProgress1.Value := 0;
    Timer1.Enabled := True;
    ksTableView3.ClearItems;
    FAdapter := FBluetoothManager.CurrentAdapter;
    FBluetoothManager.StartDiscovery(11000);
    FBluetoothManager.OnDiscoveryEnd := DevicesDiscoveryEnd;
  end
  else
  begin
    EtatBluetooth := false;
    Panel1.Visible := false;
    Panel3.Visible := True;
    ShowMessage('Bluetooth inactif !');
  end;
end;

procedure TForm1.Text3Click(Sender: TObject);
begin
  if (Text3.Text = 'CHOISIR UN PROFIL') then
    ShowHideOptionAvatar(True)
  else
  begin
    if ((Edit1.Text <> '') and (Edit4.Text <> '')) then
    begin
      Rectangle1.Visible := false;
      SaveInfosMyProfil;
    end
    else
    begin
      ShowMessage('Veuillez complèter les différentes informations !');
      Edit4.SetFocus;
    end;

  end;

end;

procedure TForm1.Text8Click(Sender: TObject);
begin
  ListBoxItem1.IsSelected := True;
  SpeedButton10.OnClick(Sender);
  ChangeTabAction2.ExecuteTarget(Sender);
  MultiView1.Enabled := false;
end;

procedure TForm1.Text9Click(Sender: TObject);
begin
  ListBoxItem2.IsSelected := True;
  SpeedButton10.OnClick(Sender);
  MyInformationProfil;
  ChangeTabAction4.ExecuteTarget(Sender);
  MultiView1.Enabled := false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if (ksCircleProgress1.Value < 100) then
    ksCircleProgress1.Value := ksCircleProgress1.Value + 10;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  if (Finished = True) then
  begin
    Rectangle3.Visible := false;
    Layout43.Visible := false;
    ChangeTabAction3.ExecuteTarget(Sender);
    Timer2.Enabled := false;
  end
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  (* Gestion de l'etat du bluetooth du phone *)
  // -----------------------------------------------------------------------------
  if (FBluetoothManager.ConnectionState = TBluetoothConnectionState.Connected)
  then
  begin
    if (Paired = false) then
    begin
      try
        FBluetoothManager := TBluetoothManager.Current;
        FAdapter := FBluetoothManager.CurrentAdapter;
        if ManagerConnected then
        begin
          Panel3.Visible := false;
          Panel1.Visible := True;
          EtatBluetooth := True;
          PairedDevices;
          ActivationService;
          Paired := True;
        end
        else
        begin
          EtatBluetooth := false;
          Panel1.Visible := false;
          Panel3.Visible := True;
          Paired := false;
        end;
      except
        on E: Exception do
        begin
          EtatBluetooth := false;
          Panel1.Visible := false;
          Panel3.Visible := True;
          Paired := false;
        end;
      end;
    end;
    if (TabItem3.IsSelected) then
    begin
      if (chatOnline = false) then
      begin
        Text20.Text :=
          'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
        SpeedButton8.Text := 'SE CONNECTER';
        // ListBoxItem6.Text := 'Se déconnecter';
        SpeedButton6.StyleLookup := 'detailstoolbutton';
      end;
    end
    else if (TabItem2.IsSelected) then
    begin
      Panel3.Visible := false;
      Panel1.Visible := True;
    end;
  end
  else
  begin
    if (TabItem3.IsSelected) then
    begin
      Text20.Text :=
        'Activez votre Bluetooth et connectez-vous à cet utilisateur enfin de chater ensemble.';
      SpeedButton8.Text := 'ACTIVER';
      Rectangle21.Visible := True;
      ListBoxItem6.Text := 'Se Connecter';
      // SpeedButton6.StyleLookup := 'refreshtoolbutton';
    end
    else if (TabItem2.IsSelected) then
    begin
      Panel3.Visible := True;
      Panel1.Visible := false;
    end;
    Paired := false;
    chatOnline := false;
    if ServerConnectionTH <> nil then
    begin
      ServerConnectionTH.Terminate;
      ServerConnectionTH.WaitFor;
      FreeAndNil(ServerConnectionTH);
    end;
  end;
end;

procedure TForm1.VerificationUser(DeviceName, MacAdress: string);
begin
  (* verifier si l'utilisateur existe déjà dans la bd locale *)
  // ----------------------------------------------------------------------------
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Add('SELECT * FROM User_contact ');
  DM.Qry.SQL.Add(' WHERE  mac_adress = ' + QuotedStr(MacAdress));
  DM.Qry.Open();
  if (DM.Qry.RecordCount = 0) then
  begin
    try
      DM.Tuser.append;
      DM.Tuser.FieldByName('device_name').AsString := DeviceName;
      DM.Tuser.FieldByName('mac_adress').AsString := MacAdress;
      DM.Tuser.FieldByName('avatar_id').AsInteger := 0;
      DM.Tuser.Post;
      DM.Tuser.Last;

      UserIdChatOnline := DM.Tuser.FieldByName('id_user').AsInteger;
      UserDeviceNameChatOnline := DM.Tuser.FieldByName('device_name').AsString;
      UserMacAdrresseChatOnline := DM.Tuser.FieldByName('mac_adress').AsString;
      UserAvatarChatOnline := DM.Tuser.FieldByName('avatar_id').AsInteger;

      Text18.Text := DM.Tuser.FieldByName('device_name').AsString;
    except
      DM.Tuser.Cancel;
    end
  end
  else
  begin
    // Verifier si le Device Name a changé
    if (DM.Qry.FieldByName('device_name').AsString <> DeviceName) then
    begin
      try
        DM.Qry.Edit;
        DM.Qry.FieldByName('device_name').AsString := DeviceName;
        DM.Qry.Post;
        UserIdChatOnline := DM.Qry.FieldByName('id_user').AsInteger;
        UserDeviceNameChatOnline := DM.Qry.FieldByName('device_name').AsString;
        UserMacAdrresseChatOnline := DM.Qry.FieldByName('mac_adress').AsString;
        if (DM.Qry.FieldByName('avatar_id').AsInteger >= 0) then
        begin
          UserAvatarChatOnline := DM.Qry.FieldByName('avatar_id').AsInteger;
        end
        else
        begin
          UserAvatarChatOnline := 0;
        end;
      except
        DM.Qry.Cancel;
      end
    end;

    UserIdChatOnline := DM.Qry.FieldByName('id_user').AsInteger;
    UserDeviceNameChatOnline := DM.Qry.FieldByName('device_name').AsString;
    UserMacAdrresseChatOnline := DM.Qry.FieldByName('mac_adress').AsString;
    UserAvatarChatOnline := DM.Qry.FieldByName('avatar_id').AsInteger;

    if (DM.Qry.FieldByName('name_user').AsString = '') then
    begin
      Text18.Text := DM.Qry.FieldByName('device_name').AsString;
    end
    else
    begin
      Text18.Text := DM.Qry.FieldByName('name_user').AsString;
    end;

  end;
end;

procedure TForm1.VerificationUserFirstShowApk;
begin
  (* Verifier l'existence d'un compte user *)
  if (DM.Tprofil.RecordCount = 0) then
  begin
    Rectangle3.Visible := True;
    Panel6.Visible := True;
    Rectangle1.Visible := True;
    ChangeColor(Rectangle16.Fill.Color);
    ColorChat;
  end
  else
  begin
    (* couleur application *)
    // ---------------------------------------------------------------------------
    ChangeColor(StringToAlphaColor(DM.QrysettingsColor.FieldByName('color_name')
      .AsString));
    Rectangle1.Visible := false;
    SaveInfosMyProfil;
    MyInformationProfil;
    AddListMsg;
  end;
end;

{ TServerConnectionTH }

constructor TServerConnectionTH.Create(ACreateSuspended: Boolean);
begin
  inherited;
end;

destructor TServerConnectionTH.Destroy;
begin
  FSocket.Free;
  FServerSocket.Free;
  inherited;
end;

procedure TServerConnectionTH.Execute;
var
  Msg: string;
  LData: TBytes;
begin
  (* Classe gérants la lecture des message par le serveur Bluetooth *)

  while not Terminated do
    try
      FSocket := nil;
      while not Terminated and (FSocket = nil) do
        FSocket := FServerSocket.Accept(100);
      if (FSocket <> nil) then
      begin
        while not Terminated do
        begin
          LData := FSocket.ReceiveData;
          if Length(LData) > 0 then
            Synchronize(
              procedure

              var
                Recieved: string;
                verif: string;
              begin
                Form1.chatOnline := True;
                Recieved := TEncoding.UTF8.GetString(LData);
                verif := Copy(Recieved, 1, 7);
                if (verif = 'CONNECT') then
                begin
                  // Enregistrer les nouvelles informations de l'utilisateur
                  Form1.InfosUserRecieved(Recieved);
                end
                else
                begin
                  Form1.LastDiscuionUSerOline := Recieved;
                  (* Gestion de l'affichage de message et la sauvergarde *)
                  Form1.SaveRecievedMsg(Form1.UserIdChatOnline, Recieved);
                end
              end);
          Sleep(500);
        end;
      end;
    except
      on E: Exception do
      begin
        Msg := E.Message;
        Synchronize(
          procedure
          begin
            Form1.FreeSocket;
            Form1.chatOnline := false;
            Form1.Text19.Text := 'Non connecté';
            Form1.ListBoxItem6.Text := 'Se connecter';
            Form1.Text20.Text :=
              'Impossible de chater avec cet utilisateur, veuillez-vous connecter.';
            Form1.Rectangle21.Visible := True;
            Form1.SendMyInfo := false;
            Form1.UserInfonOffline[1] := Inttostr(Form1.UserIdChatOnline);
            Form1.UserInfonOffline[2] := Form1.UserDeviceNameChatOnline;
            Form1.UserInfonOffline[3] := Form1.UserMacAdrresseChatOnline;
            Form1.UserInfonOffline[4] := Inttostr(Form1.UserAvatarChatOnline);
            Form1.UserInfonOffline[5] := Form1.UserNameChatOnline;
            Form1.UserIdChatOnline := 0;
            Form1.UserDeviceNameChatOnline := '';
            Form1.UserMacAdrresseChatOnline := '';
            Form1.UserAvatarChatOnline := 0;
            Form1.UserNameChatOnline := '';
            Form1.NotificationConnexionDeconnexion(false);
          end);
      end;
    end;
end;

end.

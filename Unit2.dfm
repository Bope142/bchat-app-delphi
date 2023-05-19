object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 459
  Width = 510
  object FDConnection1: TFDConnection
    AfterConnect = FDConnection1AfterConnect
    BeforeConnect = FDConnection1BeforeConnect
    Left = 80
    Top = 56
  end
  object Tuser: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM User_contact')
    Left = 96
    Top = 144
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 280
    Top = 64
  end
  object FDScript1: TFDScript
    SQLScripts = <
      item
        Name = 'version1'
        SQL.Strings = (
          'CREATE TABLE User_contact ('
          'id_user integer primary key autoincrement,'
          'name_user VARCHAR(100) default'#39#39','
          'device_name VARCHAR(100) default'#39#39','
          'avatar_id integer,'
          'mac_adress VARCHAR(100) default'#39#39
          ');'
          'CREATE TABLE Message_user_recent ('
          'id integer primary key autoincrement,'
          'id_user integer,'
          'avatar_user integer,'
          'name_user VARCHAR(100) default'#39#39','
          'details_recent_msg VARCHAR(5000) default '#39#39','
          'datetimes default (datetime('#39'now'#39', '#39'localtime'#39'))'
          ');'
          'CREATE TABLE Message_Send ('
          'id_msg integer primary key autoincrement,'
          'id_user integer,'
          'msg VARCHAR(50000) default '#39#39','
          'id_msg_recu integer,'
          'datetimes default (datetime('#39'now'#39', '#39'localtime'#39')),'
          'is_first_msg boolean default '#39'false'#39
          ');'
          'CREATE TABLE Message_recu ('
          'id_msg integer primary key autoincrement,'
          'id_user integer,'
          'msg VARCHAR(50000) default '#39#39','
          'id_msg_send integer,'
          'datetimes default (datetime('#39'now'#39', '#39'localtime'#39')),'
          'is_first_msg boolean default '#39'false'#39
          ');'
          'CREATE TABLE MyProfil ('
          'ids_user integer primary key autoincrement,'
          'nom_compte VARCHAR(100) default'#39#39','
          'device_name VARCHAR(100) default'#39#39','
          'avatar_id integer,'
          'mac_adress VARCHAR(100) default'#39#39
          ');'
          'CREATE TABLE ColorFond ('
          'id_clr integer primary key autoincrement,'
          'color_name VARCHAR(100) default'#39#39
          ');'
          'CREATE TABLE Theme ('
          'id_theme integer primary key autoincrement,'
          'mode_sombre boolean default '#39'false'#39
          ');')
      end>
    Connection = FDConnection1
    Params = <>
    Macros = <>
    Left = 376
    Top = 64
  end
  object Tmsg_recent: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Message_user_recent')
    Left = 296
    Top = 144
  end
  object Tmsg_send: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Message_Send')
    Left = 96
    Top = 208
  end
  object Tmsg_rec: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Message_recu')
    Left = 224
    Top = 144
  end
  object Qry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM User_contact')
    Left = 160
    Top = 144
  end
  object Tlistsend: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Message_Send')
    Left = 32
    Top = 144
  end
  object Tlistresiev: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Message_recu')
    Left = 296
    Top = 208
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Message_Send')
    Left = 32
    Top = 208
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Message_recu')
    Left = 448
    Top = 144
  end
  object QrySelct: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM User_contact')
    Left = 160
    Top = 208
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Message_user_recent')
    Left = 352
    Top = 208
  end
  object Tprofil: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM MyProfil')
    Left = 224
    Top = 208
  end
  object QrysettingsColor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ColorFond')
    Left = 368
    Top = 144
  end
  object Qrythemes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Theme')
    Left = 424
    Top = 208
  end
end

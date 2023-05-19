CREATE TABLE User_content (
id integer primary key autoincrement,
operations VARCHAR(100) default'',
contenus TEXT default'',
resultat TEXT default'',
mac_adress VARCHAR(100) default'',
datetimes default (datetime("now", "localtime"))
);
CREATE TABLE User_historique (
id integer primary key autoincrement,
operations VARCHAR(100) default'',
contenus TEXT default'',
resultat TEXT default'',
cle TEXT default'',
datetimes default (datetime("now", "localtime"))
);
CREATE TABLE Thistory (
id integer primary key autoincrement,
operations VARCHAR(3000) default'',
content VARCHAR(3000) default'',
results VARCHAR(3000) default'',
keyUse VARCHAR(3000) default'',
datetimes default (datetime("now", "localtime"))
);
CREATE TABLE Message_user_recent (
id integer primary key autoincrement,
id_user integer,
avatar_user integer,
name_user VARCHAR(100) default'',
details_recent_msg VARCHAR(5000) default '',
datetimes default (datetime("now", "localtime"))
);
CREATE TABLE Message_Send (
id_msg integer primary key autoincrement,
id_user integer,
msg VARCHAR(50000) default '',
id_msg_recu integer,
datetimes default (datetime('now', 'localtime')),
is_first_msg boolean default 'false'
);
CREATE TABLE Message_recu (
id_msg integer primary key autoincrement,
id_user integer,
msg VARCHAR(50000) default '',
id_msg_send integer,
datetimes default (datetime('now', 'localtime')),
is_first_msg boolean default 'false'
);
CREATE TABLE MyProfil (
ids_user integer primary key autoincrement,
nom_compte VARCHAR(100) default'',
device_name VARCHAR(100) default'',
avatar_id integer,
mac_adress VARCHAR(100) default''
);
CREATE TABLE ColorFond (
id_clr integer primary key autoincrement,
color_name VARCHAR(100) default''
);
CREATE TABLE Theme (
id_theme integer primary key autoincrement,
mode_sombre boolean default 'false'
);


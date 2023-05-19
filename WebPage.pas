unit WebPage;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, System.variants
{$IF Defined(ANDROID)}
    , Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Net,
  Androidapi.JNI.App,
  Androidapi.Helpers
{$ENDIF};

type
  OpenPage = class
    class procedure Ouvrir(URL: string);
  end;

implementation

{ OpenPage }

class procedure OpenPage.Ouvrir(URL: string);
{$IF Defined(ANDROID)}
Var
  Intent: Jintent;
{$ENDIF}
begin
{$IF Defined(ANDROID)}
  Intent := TJIntent.Create;
  Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
  Intent.setData(strtoJURI(URL));
  tandroidHelper.Activity.startActivity(Intent);
{$ENDIF}
end;

end.

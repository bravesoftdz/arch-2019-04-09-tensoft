unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Memo1: TMemo;
    Splitter1: TSplitter;
    XMLDocument1: TXMLDocument;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Helper.TDataSet;

procedure TForm1.Button1Click(Sender: TObject);
var
  XMLDoc: IXMLDocument;
  root: IXMLNode;
  ss: TStringStream;
begin
  FDQuery1.Open('SELECT {year(orderdate)} as Year, ' +
    '{month(OrderDate)} as Month, count(*) as OrderCount FROM {id Orders}' +
    'GROUP BY {year(orderdate)}, {month(OrderDate)}');
  XMLDoc := NewXMLDocument();
  root := XMLDoc.AddChild('orders-by-month');
  FDQuery1.WhileNotEof(
    procedure()
    var
      order: IXMLNode;
    begin
      order := root.AddChild('order');
      order.Attributes['year'] := FDQuery1.FieldByName('Year').AsInteger;
      order.Attributes['month'] := FDQuery1.FieldByName('Month').AsInteger;
      order.Text := FDQuery1.FieldByName('OrderCount').AsString;
      {
      Memo1.Lines.Add(Format('%d-%.2d : %d',
        [FDQuery1.FieldByName('Year').AsInteger, FDQuery1.FieldByName('Month')
        .AsInteger, FDQuery1.FieldByName('OrderCount').AsInteger]))
      }
    end);
  ss := TStringStream.Create;
  XMLDoc.SaveToStream(ss);
  Memo1.Lines.Add('--------------------------------------------');
  Memo1.Lines.Add(ss.DataString);
  ss.Free;
end;

end.
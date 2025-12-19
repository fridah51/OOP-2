type
  ArrayCRUD = object
    arr: array[1..10] of Integer;
    size: Integer;
    procedure Create(value: Integer);
    procedure Read;
    procedure Update(index, value: Integer);
    procedure Delete(index: Integer);
  end;

procedure ArrayCRUD.Create(value: Integer);
begin
  Inc(size);
  arr[size] := value;
end;

procedure ArrayCRUD.Read;
var i: Integer;
begin
  for i := 1 to size do
    Write(arr[i], ' ');
  Writeln;
end;

procedure ArrayCRUD.Update(index, value: Integer);
begin
  if index <= size then arr[index] := value;
end;

procedure ArrayCRUD.Delete(index: Integer);
var i: Integer;
begin
  for i := index to size - 1 do
    arr[i] := arr[i + 1];
  Dec(size);
end;

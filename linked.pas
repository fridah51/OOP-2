type
  PNode = ^Node;
  Node = record
    data: Integer;
    next: PNode;
  end;

procedure Create(var head: PNode; value: Integer);
var n: PNode;
begin
  New(n);
  n^.data := value;
  n^.next := head;
  head := n;
end;

procedure Read(head: PNode);
begin
  while head <> nil do
  begin
    Write(head^.data, ' -> ');
    head := head^.next;
  end;
  Writeln('nil');
end;

procedure Delete(var head: PNode; value: Integer);
var temp, prev: PNode;
begin
  temp := head;
  prev := nil;
  while temp <> nil do
  begin
    if temp^.data = value then
    begin
      if prev = nil then head := temp^.next
      else prev^.next := temp^.next;
      Dispose(temp);
      Exit;
    end;
    prev := temp;
    temp := temp^.next;
  end;
end;

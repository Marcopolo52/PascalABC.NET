const
  n = 9;

var
  a: array[1..n, 1..n] of integer;
  x, y: integer;

begin
  for x := 1 to n do 
  begin
    a[x, n - x + 1] := 1;
  end;
  
  for y := 1 to n - 1 do
  begin
    for x := 1 to n - y do
    begin
      a[x, y] := n - y - x + 2;
    end;
  end;
  
  for y := n downto 2 do
  begin
    for x := n downto n - y + 2 do
    begin
      a[x, y] := x + y - n;
    end;
  end;
  
  for y := 1 to n do 
  begin
    for x := 1 to n do 
    begin
      write(a[x, y]:3);
    end;
    writeln;
  end;
end.

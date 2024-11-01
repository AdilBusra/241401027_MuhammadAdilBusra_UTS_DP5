program fibonacci;

uses crt;

var
    a1, a2, a, t : longint;
    i, n : integer;

begin
    
    clrscr;

    write('Masukkan Batas Deret Fibonacci   : '); readln(n);

    while (n <= 0 ) do
        begin
            writeln;
            writeln('Batas Deret harus lebih dari 0');
            write('Masukkan Batas Deret Fibonacci   : '); readln(n);
        end;

    a1 := 0;
    a2 := 1;
    a := 0;
    t := 0;

    writeln;
    write('Sequence : ', a1);

    if n >= 2 then 
        begin
            write(', ',a2);
            t := t + a2;
        end;
    
    for i := 3 to n do 
        begin
            a := a1 + a2;
            a1 := a2;
            a2 := a;
            write(', ',a);
            t := t + a;
        end;

    writeln;
    
    writeln('Total  : ',t);

    readln;
    
end.
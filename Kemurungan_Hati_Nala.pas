program hatinala;

uses crt;

var
    n, i, uang : integer;
    harga : array [1..99] of longint;

begin

    clrscr;

    uang := 10000;

    write('Masukkan Banyak Jenis Minuman : '); readln(n);

    for i := 1 to n do 
        begin
            write('Harga Minuman Ke-',i,'   : Rp.'); readln(harga[i]); 
        end;

    writeln;
    
    writeln('Minuman yang bisa dibeli Nala');

    for i := 1 to n do
        begin
            if harga[i] <= uang then 
                begin
                    writeln('Minuman Ke-',i,'   : ',harga[i]);
                end;
        end;

    readln;

end.
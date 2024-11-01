program toko_koko;

uses crt;

var
    bayar, total, kembalian, pecahan, sisa : longint;
    
begin

    clrscr;

    write('Masukkan Total Belanja   : Rp.'); readln(total);
    write('Masukkan Uang  : Rp.'); readln(bayar);

    while (bayar < total) do
        begin
            writeln('Maaf Uang tidak cukup');
            write('Masukkan Uang    : Rp.'); readln(bayar);
        end;

    writeln;
    
    kembalian := bayar - total;
    
    pecahan := 0;
    sisa := kembalian;
    
    
    while sisa >= 100000 do
        begin
            sisa := sisa - 100000;
            pecahan := pecahan + 1;
        end;
    
    while sisa >= 75000 do
        begin
            sisa := sisa - 75000;
            pecahan := pecahan + 1;
        end;
    
    while sisa >= 50000 do
        begin
            sisa := sisa - 50000;
            pecahan := pecahan + 1;
        end;
    
    while sisa >= 20000 do
        begin
            sisa := sisa - 20000;
            pecahan := pecahan + 1;
        end;
    
    while sisa >= 10000 do
        begin
            sisa := sisa - 10000;
            pecahan := pecahan + 1;
        end;
    
    while sisa >= 5000 do
        begin
            sisa := sisa - 5000;
            pecahan := pecahan + 1;
        end;
    
    while sisa >= 2000 do
        begin
            sisa := sisa - 2000;
            pecahan := pecahan + 1;
        end;
    
    while sisa >= 1000 do
        begin
            sisa := sisa - 1000;
            pecahan := pecahan + 1;
        end;
    
    while sisa >= 500 do
        begin
            sisa := sisa - 500;
            pecahan := pecahan + 1;
        end;
    
    while sisa >= 100 do
        begin
            sisa := sisa - 100;
            pecahan := pecahan + 1;
        end;
    
    writeln('Kembalian    : Rp.',kembalian);
    writeln('Jumlah Pecahan Uang    : ',pecahan);

    readln;

end.
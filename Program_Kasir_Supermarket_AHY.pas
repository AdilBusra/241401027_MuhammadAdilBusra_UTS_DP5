program kasir_ahy;

uses crt;

var 
    nama, hari, produk, jenis, m, p : string;
    harga, total, dhari, dmember, diskon, dpoin, d10produk, bayar : real;
    n, i, jproduk, poin : integer;

begin
    
    clrscr;

    write('Nama : '); readln(nama);
    write('Hari : '); readln(hari);
    write('Banyak macam produk : '); readln(n);

    total := 0;
    dhari := 0;
    dmember := 0;
    d10produk := 0;
    dpoin := 0;
    diskon := 0;
    poin := 0;

    for i := 1 to n do
        begin
            write('Nama Produk Ke-',i,' : '); readln(produk);
            write('Jenis Produk (Hygiene/Frozenfood/Elektronik/Laktosa/Lain-lain) :'); readln(jenis);
            write('Harga per satuan : '); readln(harga);
            write('Jumlah Produk ke-',i,'   : '); readln(jproduk);
            total := total + (harga * jproduk);
            if (hari = 'Senin') or (hari = 'senin') and (jenis = 'Hygiene') or (jenis = 'hygiene') then
                begin
                    dhari := 0.1;
                end
            else if (hari = 'Selasa') or (hari = 'selasa') and (jenis = 'Frozenfood') or (jenis = 'frozenfood') then
                begin
                    dhari := 0.05;
                end
            else if (hari = 'Rabu') or (hari = 'rabu') and (jenis = 'Elektronik') or (jenis = 'elektronik') then
                begin
                    dhari := 0.3;
                end
            else if (hari = 'Kamis') or (hari = 'kamis') and (jenis = 'Laktosa') or (jenis = 'laktosa') then
                begin
                    dhari := 0.1;
                end;
            if jproduk mod 10 = 0 then
                begin
                    d10produk := d10produk + 0.05;
                end;
        end;
    
    write('Member (Ya/Tidak)   : '); readln(m);

    if (m = 'Ya') or (m = 'ya') then
        begin
            dmember := 0.1;
        end;

    diskon := diskon + dhari + d10produk + dmember;

    bayar := total - (total * diskon);
    dhari := dhari * 100;
    d10produk := d10produk * 100;
    dmember := dmember * 100;
    diskon := diskon * 100;
    poin := round (bayar / 50000);
  
    writeln('Total Harga    : Rp.',total:0:0);
    writeln('Diskon : ',dhari:0:2,'% + ',d10produk:0:2,'% + ',dmember:0:2,'% = ',diskon:0:2,'%');
    writeln('Pembayaran : Rp.',bayar:0:0);
    writeln('Poin   : ',poin);

    if (poin >= 50 ) then
        begin
            write('Poin mencapai 50, ingin menukarnya menjadi voucher diskon?(Ya/Tidak)   : '); readln(p);
            if (p = 'Ya') or (p = 'ya') then
                begin
                    poin := poin - 50;
                    dpoin := 0.2;
                    diskon := (diskon / 100) + dpoin;
                    bayar := total - (total * diskon);
                    diskon := diskon * 100;
                    writeln('Total Harga    : Rp.',total:0:0);
                    writeln('Diskon : ',dhari:0:2,'% + ',d10produk:0:2,'% + ',dmember:0:2,'% + ',dpoin:0:2,'% =',diskon:0:2,'%');
                    writeln('Pembayaran : Rp.',bayar:0:0);
                    writeln('Poin   : ',poin);
                end;
        end;

    readln;

end. 
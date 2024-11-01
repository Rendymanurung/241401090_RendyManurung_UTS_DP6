
Program Kasir;

Uses crt;

Var 
          kembalian, jumlahlembar:         longint;
          pecahan:         array[1..11] Of longint =         (100000, 75000, 50000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100);
          i:         integer;
Begin
          clrscr;
          write('Masukan Jumlah Kembalian: ');
          readln(kembalian);
          jumlahlembar := 0;

          For i := 1 To 11 Do
                    Begin
                              If kembalian >= pecahan[i] Then
                                        Begin
                                                  jumlahlembar := jumlahlembar + (kembalian Div pecahan[i]);
                                                  kembalian := kembalian Mod pecahan[i];
                                        End;
                    End;

          WriteLn('Jumlah lembar/koin yang dibutuhkan: ', jumlahlembar);
End.

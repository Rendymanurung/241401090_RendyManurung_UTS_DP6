
Program pemilihan;

Uses crt;

Var 
          i,jumlahpemilih,pilihanA,pilihanB:         integer;
          pilihan:         char;

Begin
          clrscr;


          pilihanA := 0;
          pilihanB := 0;

          write('Masukan jumlah pemilih: ');
          readln(jumlahpemilih);

          For i:=1 To jumlahpemilih Do
                    Begin
                              write('Masukan pilihan pemilih ', i ,'(A/B): ');
                              readln(pilihan);

                              If (pilihan = 'A') Or (pilihan = 'a') Then
                                        inc(pilihanA)
                              Else      If (pilihan = 'B') Or (pilihan = 'b') Then
                                                  inc(pilihanB)
                              Else
                    End;

          writeln(pilihanA);
          writeln(pilihanB);






End.

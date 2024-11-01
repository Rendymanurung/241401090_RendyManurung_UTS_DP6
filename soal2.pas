
Program  PanitiyanSukTelat;

Uses crt;


Var 
          Nama,Jabatan:         string;
          waktujam,waktumenit,waktutotal:         integer;
          denda:         real;



Begin
          clrscr;
          write('Nama: ');
          readln(nama);
          write('Jabatan : ');
          readln(Jabatan);

          Repeat

                    write('Datang(jam): ');
                    readln(waktujam);
                    If waktujam > 24 Then
                              Begin
                                        writeln('harap masukan jam 1-24');
                              End;
          Until waktujam <= 24;

          Repeat
                    write('Datang(menit): ');
                    readln(waktumenit);
                    If waktumenit > 60 Then
                              Begin
                                        writeln('Harap masukan menit 1-60');
                              End;
          Until waktumenit <= 60;
          waktutotal := (waktujam*60)+waktumenit;

          If (jabatan= 'panitia') And (waktutotal>420) Then 
                    Begin
                              denda := ((waktutotal-420) Div 5)*10000;
                    End;
          If jabatan = ('ketua') Then
                    If waktutotal >420 Then
                              denda := ((waktutotal-420) Div 5)*20000;
          If jabatan = ('wakil ketua') Then
                    If waktutotal >420 Then
                              denda := ((waktutotal-420) Div 5)*20000;
          If jabatan = ('sekretaris umum') Then
                    If waktutotal >420 Then
                              denda := ((waktutotal-420) Div 5)*20000;
          If jabatan = ('bendahara') Then
                    If waktutotal >420 Then
                              denda := ((waktutotal-420) Div 5)*20000;

          write('Denda: Rp.', denda:0:0);

End.

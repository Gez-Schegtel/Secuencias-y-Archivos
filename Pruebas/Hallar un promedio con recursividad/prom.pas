
{
    Este programa permite hallar el promedio entre los valores de un arreglo unitario con cuatro elementos. 

    La función 'Randomize' permite que los valores aleatorios de la función 'random' difieran cada vez que se ejecute el código.
    Esto será siempre así sólo si se ejecuta el programa en intervalos mayores al segundo.
}

program prom; 
uses crt;
var 
    arr: array [1..4] of real;
    index: integer;
    acuml: real;
    i: integer; 

    function recursiveProm(index: integer): real;
    begin
        if (index <= 4) then
        begin 
            acuml:= acuml + arr[index];
            recursiveProm(index + 1);
        end; 

        recursiveProm:= acuml/4
    end;

begin 
    Randomize();

    textcolor(lightcyan);
    write(' Contenido del arreglo >>');
    textcolor(lightgreen);
    for i:= 1 to 4 do
    begin 
        arr[i]:= random(10);
        write(' | ', arr[i]:0:2);
    end; 
    writeln(' | ');

    index:= 1;
    acuml:= 0;

    textcolor(lightcyan);
    write(' Promedio >> ');
    textcolor(lightgreen);
    writeln(recursiveProm(index):0:2);

end.














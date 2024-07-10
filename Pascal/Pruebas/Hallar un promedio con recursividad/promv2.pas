{
    Este programa permite hallar el promedio entre los valores de un arreglo unitario con cuatro elementos. 

    La función 'Randomize' permite que los valores aleatorios de la función 'random' difieran cada vez que se ejecute el código.
    Esto será siempre así sólo si se ejecuta el programa en intervalos mayores al segundo.

    Recordar que (5+2+1+3)÷4 = (5÷4)+(2÷4)+(1÷4)+(3÷4) xD
}

program prom; 
uses crt;
var 
    arr: array [1..4] of real;
    acuml: real;
    i: integer; 

    function recursiveProm(x: array of real; index: integer): real;
    begin
        if (index < 3) then
        begin 
            acuml:= (acuml + x[index])/4;
            recursiveProm:= acuml + recursiveProm(x, index + 1);
        end; 
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

    acuml:= 0;

    textcolor(lightcyan);
    write(' Promedio >> ');
    textcolor(lightgreen);
    writeln(recursiveProm(arr, 0):0:2);

end.
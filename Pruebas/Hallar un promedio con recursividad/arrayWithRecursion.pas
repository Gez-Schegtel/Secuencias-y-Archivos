

program recArray;
var 
    arr: array [1..4] of integer;

    procedure showTheArray(x: array of integer; index: integer);
    begin
        if (index <= 4) then 
        begin 
            write(' | ', x[index]);
            showTheArray(x, index+1)
        end;
    end;

begin 
    arr[1]:= 2;
    arr[2]:= 3;
    arr[3]:= 7;
    arr[4]:= 1;

    showTheArray(arr, 0);

end.
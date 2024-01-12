

function whatever = functionCall()

clc;
clear all;

value = 2;

 objeto = Testx(value)


 disp(" ok " );

 objeto.sam(3,4)

whatever = objeto.Ts;

dlmwrite("../meuResultado.txt", ...
            [objeto.Ts objeto.x], "delimiter", " ");


  endfunction

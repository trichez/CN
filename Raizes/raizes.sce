clear;
/* -------- DECRALAÇÃO/MPLEMENTAÇÃO DAS FUNÇÕES DOS MÉTODOS ---------  */
function newton()

    if (fun(a) * fun2l(xn)) > 0 then
        xn = a;
    else
        xn = b;
    end
    
    while abs(fun(xn)) > precisao do
    
        xn = xn - (fun(xn)/ funl(xn));
        counter = counter +1;
    end    
    
    printf("\n(metodo de Newton) raiz aproximada: %f [apos %d iteracoes]", xn, counter);
endfunction  

function cordas()
        
    xn = (a * fun(b) - b * fun(a))/ (fun(b) - fun(a));
    counter = counter + 1; //conta a "iteração" acima
     
    while abs(fun(xn)) > precisao do
        
        xn = (a * fun(b) - b * fun(a))/ (fun(b) - fun(a));
        fxn = fun(xn);
        
        if(fun(fxn) * fun(a) > 0 ) then
            a = xn;
        else 
            b = xn;            
        end 
    
        counter = counter + 1;
        
    end   
    printf("\n(metodo de C  ordas) raiz aproximada: %f [apos %d iteracoes]", xn, counter);

endfunction

function bissecao()
   
    x = (a + b)/2;  // faz essa primeira fora do laço 
    fdx = fun(x);   // por conta do teste condicional do critério de parada 
    counter = counter + 1;  //conta a "iteração" acima
    

    while abs(fdx) > precisao do
        
        x = (a+b)/2;
        fdx = fun(x);
          
        if(fdx*fun(a) > 0) then
            a = x;
        else
            b = x;     
        end    
        counter = counter + 1;    
    end    
    printf("\n(metodo da Bissecao) raiz aproximada: %f [apos %d iteracoes]", x, counter);

endfunction
/*--------------------------------------------------------*/
/* ------- FUNÇÕES ALGÉBRICAS -------  */
function [res] = fun(x)
    res = x^3 -2*x +1; // intervalos dque contém raízes ={(-2,-1), (0.5, 0.8), (0.8, 1.3))}
endfunction

function [yl] = funl(x)
    yl = 3*x^2 -2; // DERIVADA DE PRIMEIRO GRAU
endfunction

function [yll] = fun2l(x)
    yll = 6*x; // DERIVADA DE SEGUNDO GRAU
endfunction

/* ------- ----------------- -------  */


/* ----- parte principal do programa: ----------*/
    X=[-3:0.1:3];
    a = -2;
    b = -1; 
    precisao = 0.00000001;
    counter = 0;// começa em 1 por conta dessa primeira vez que faz fora do laço
    xn = 0;
    clf();
    plot2d(X,fun(X));


    
    newton();
    cordas();
    bissecao();

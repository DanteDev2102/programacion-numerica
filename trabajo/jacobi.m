disp("Metodo Jacobi")

A= input("Ingrese la matriz de coeficientes A con diagonal dominante: ")
b= input("Ingrese el vector b de terminos independientes: ")
x0 = input("Ingrese vector inicial: ")
tol= input("Ingrese la tolerancia: ")
max_iter=input("Ingrese el maximo de iteraciones: ")



function [x, iter] = jacobi(A, b, x0, tol, max_iter)
% Solución de un sistema de ecuaciones lineales mediante el método de Jacobi
% A: matriz de coeficientes
% b: vector de términos independientes
% x0: vector inicial
% tol: tolerancia para el criterio de parada
% max_iter: número máximo de iteraciones permitidas

n = length(b); % Obtener el tamaño del vector de términos independientes
x = x0; % Inicializar el vector solución como el vector inicial
iter = 0; % Inicializar el contador de iteraciones en cero

tic % Iniciar el temporizador

while iter < max_iter % Iniciar el ciclo iterativo
    x_old = x; % Almacenar la solución anterior

    % Calcular la nueva solución para cada variable utilizando el método de Jacobi
    for i = 1:n
        sum = 0; % Inicializar la suma en cero
        for j = 1:n
            if i ~= j % Ignorar la diagonal principal de la matriz
                sum = sum + A(i,j)*x_old(j); % Sumar los términos correspondientes
            end
        end
        x(i) = (b(i) - sum)/A(i,i); % Calcular el nuevo valor de la variable
    end

    % Verificar si la solución ha convergido mediante el criterio de parada
    if norm(x - x_old) < tol
        break; % Salir del ciclo iterativo si se ha alcanzado la convergencia
    end

    iter = iter + 1; % Incrementar el contador de iteraciones

    % Mostrar la solución por iteración en la pantalla
    fprintf('Iteración %d: ', iter);
    disp("")
    disp(x);
end

elapsed_time = toc; % Detener el temporizador y almacenar el tiempo transcurrido

fprintf('Tiempo de ejecución: %f segundos\n', elapsed_time); % Mostrar el tiempo transcurrido

end

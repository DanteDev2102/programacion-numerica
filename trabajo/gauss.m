A=input("Ingrese la matriz de coeficientes: ")
b= input("Ingrese el vector de terminos independiente: ")


function [x] = gauss(A, b)
% Solución de un sistema de ecuaciones lineales mediante el método de eliminación de Gauss
% A: matriz de coeficientes
% b: vector de términos independientes

n = length(b); % Obtener el tamaño del vector de términos independientes

tic % Iniciar el temporizador

% Etapa de eliminación
for k = 1:n-1 % Recorrer todas las filas excepto la última
    for i = k+1:n % Recorrer todas las filas por debajo de la fila k
        factor = A(i,k)/A(k,k); % Calcular el factor de eliminación
        for j = k+1:n % Recorrer todas las columnas a la derecha de la columna k
            A(i,j) = A(i,j) - factor*A(k,j); % Actualizar los elementos de la fila i
        end
        b(i) = b(i) - factor*b(k); % Actualizar el término independiente i
    end
end

% Etapa de sustitución hacia atrás
x = zeros(n,1); % Inicializar el vector solución
x(n) = b(n)/A(n,n); % Calcular la última variable
for i = n-1:-1:1 % Recorrer todas las filas hacia arriba desde la penúltima fila
    sum = 0; % Inicializar la suma en cero
    for j = i+1:n % Recorrer todas las columnas a la derecha de la columna i
        sum = sum + A(i,j)*x(j); % Sumar los términos correspondientes
    end
    x(i) = (b(i) - sum)/A(i,i); % Calcular el valor de la variable i
end
%Imprimir x en pantalla
disp(x)

elapsed_time = toc; % Detener el temporizador y almacenar el tiempo transcurrido

fprintf('Tiempo de ejecución: %f segundos\n', elapsed_time); % Mostrar el tiempo transcurrido

end

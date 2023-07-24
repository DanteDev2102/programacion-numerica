function [x] = gauss(A, b)

  % A es una matriz de coeficientes
  % b es un vector de términos independientes

  % Primero, verificamos que A tenga rango completo
  disp(A);
  disp(b);
  %if rank(A) ~= nnz(A)
   % disp('A no tiene rango completo.');
   % return;
  %end

  % Ahora, resolvemos el sistema de ecuaciones por el método de Gauss

  for i = 1:3

    % Encontramos el pivote de la fila i

    pivot = abs(A(i, i));

    for j = i + 1:3

      % Si el pivote de la fila j es mayor que el pivote de la fila i,
      % intercambiamos las filas i y j

      if abs(A(j, i)) > pivot
        A([i j], :) = A([j i], :);
        b([i j]) = b([j i]);
      end

    end

    % Dividimos la fila i por el pivote

    A(i, :) = A(i, :) ./ A(i, i);
    b(i) = b(i) / A(i, i);

    % Restamos el múltiplo de la fila i de las otras filas

    for j = i + 1:3
      A(j, :) = A(j, :) - A(i, :) * A(j, i);
      b(j) = b(j) - A(j, i) * b(i);
    end

  end

  % Ahora, x es el vector de soluciones

  x = b ./ A(:, 3);

end

x = gauss([1,2,3;4,5,6;7,9,9], [10;20;30]);
disp(x);

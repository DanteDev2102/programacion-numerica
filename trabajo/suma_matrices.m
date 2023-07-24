A = input("ingrese una matriz");

B = input("ingrese una segunda matriz");

function [addition] = sum_matrices(A, B)

  % A y B son matrices de las mismas dimesiones

  % Primero, verificamos que las matrices tienen el mismo tamaño
  if size(A) ~= size(B)
    disp('Las matrices no tienen el mismo tamaño.');
    return;
  end

  % Ahora, podemos sumar las matrices

  addition = A + B;

end

addition = sum_matrices(A, B);

disp(addition);


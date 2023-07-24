% Este código resuelve el sistema de ecuaciones lineales Ax = b utilizando el método de Gauss-Seidel.
%
% A es la matriz de coeficientes.
% b es el vector de términos independientes.
% x0 es el vector de soluciones iniciales.
% tol es la tolerancia de error.
% maxiter es el número máximo de iteraciones.

function [x, iter] = gauss_seidel(A, b, x0, tol, maxiter)

  % Inicializa el contador de iteraciones.
  iter = 0;

  % Inicializa la tolerancia de error.
  err = tol + 1;

  % Inicializa el vector de soluciones.
  x = x0;

  % Mientras el error sea mayor que la tolerancia y el número de
  % iteraciones sea menor que el máximo número de iteraciones,
  while (err > tol && iter < maxiter)

    % Actualiza el vector de soluciones.
    for i = 1:size(A, 1)
      x(i) = (b(i) - A(i, 1:i-1) * x(1:i-1)) / A(i, i);
    end

    % Calcula el error.
    err = norm(x - x0, 2);

    % Incrementa el contador de iteraciones.
    iter = iter + 1;
  end

  % Devuelve el vector de soluciones y el número de iteraciones.
end

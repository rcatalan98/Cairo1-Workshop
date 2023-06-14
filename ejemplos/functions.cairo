// Ejemplos - Functions
// Podes ejecutar el ejemplo con 'cairo-run ./ejemplos/functions.cairo'
// Cairo Book: https://cairo-book.github.io/ch02-06-common-collections.html?highlight=array#array
use debug::PrintTrait;

fn main() {
    let resultado = suma(1, 2); // Llamada a la función `suma` con los argumentos 1 y 2
    resultado.print(); // Imprime el resultado de la suma
}

fn suma(param1: u128, param2: u128) -> u128 {
    param1 + param2 // Retorna la suma de los dos parámetros
}
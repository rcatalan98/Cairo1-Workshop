// Ejemplos - Conditions
// Podes ejecutar el ejemplo con 'cairo-run ./ejemplos/conditions.cairo'
// Cairo Book: https://cairo-book.github.io/ch02-05-control-flow.html?highlight=conditional#if-expressions
use debug::PrintTrait;

fn main() {
    let mut numero = 3;

    if numero == 12 {
        'numero es 12'.print();
    } else if numero == 3 {
        'numero es 3'.print();
    } else {
        'numero no encontrado'.print();
    }

    // Ejemplo de condición con asignación
    let condicion = true;
    numero = if condicion {
        5 // Asigna el valor 5 a la variable "numero" si la condición es verdadera
    } else {
        6 // Asigna el valor 6 a la variable "numero" si la condición es falsa
    };

    if numero == 5 {
        'la condicion es verdadera'.print();
    } else {
        'la condicion es falsa'.print();
    }
}
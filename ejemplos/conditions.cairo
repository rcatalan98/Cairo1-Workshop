// Ejemplos - Conditions
// Podes ejecutar el ejemplo con 'cairo-run ./ejemplos/conditions.cairo'
// Cairo Book: https://cairo-book.github.io/ch02-05-control-flow.html?highlight=conditional#if-expressions
use debug::PrintTrait;

fn main() {
    let x: u128 = 20;

    if x < 10 | x > 20 { 
        'x < 10 or x > 20'.print();

    } else if x >= 11 & x <= 20 { 
        'x >= 11 and x <= 20'.print();

    } else {
        'x == 10'.print();
    }

    // Ejemplo de condición con asignación
    let condicion = true;
    let mut numero = 0;

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
// Ejemplos - Functions
// Podes ejecutar el ejemplo con 'cairo-run ./ejemplos/functions.cairo'
use array::ArrayTrait;
use debug::PrintTrait;
use option::OptionTrait;

fn main() {
    let resultado = suma(1, 2);
    resultado.print();
}

fn suma(param1: u128, param2: u128) -> u128 {
    param1 + param2
}
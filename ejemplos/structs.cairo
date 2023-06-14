// Ejemplos - Structs
// Podes ejecutar el ejemplo con 'cairo-run ./ejemplos/structs.cairo'
// Cairo Book: https://cairo-book.github.io/ch04-01-defining-and-instantiating-structs.html#defining-and-instantiating-structs
use debug::PrintTrait;

#[derive(Copy, Drop)]
struct User {
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}

fn main() {
    let mut user1 = User {
        active: true, username: 'someusername123', email: 'someone@example.com', sign_in_count: 1
    }; // Creo un usuario
    
    user1.email.print();
    
    user1.email = 'anotheremail@example.com'; // Cambio el email

    user1.email.print();
}

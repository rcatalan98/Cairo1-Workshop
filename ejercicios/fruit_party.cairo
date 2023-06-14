// Ejercicio 3 - fruit-party ⭐ 
use array::ArrayTrait;
use dict::Felt252DictTrait;

#[derive(Drop, Copy)]
struct Fruta {
    nombre: felt252,
    precio: u32,
}

// Calcula la sumatoria de precios de frutas y devuelve un diccionario donde la clave es el nombre
/// de la fruta y el valor es la sumatoria de sus precios.
///
/// # Argumentos
///
/// * `frutas` - Una lista de frutas con sus nombres y precios.
///
/// # Ejemplo
///
/// ```
///
/// let mut frutas: Array<Fruta> = ArrayTrait::new();
/// frutas.append(Fruta { nombre: 'manzana', precio: 7 });
/// frutas.append(Fruta { nombre: 'sandia', precio: 12 });
/// frutas.append(Fruta { nombre: 'naranja', precio: 2 });
/// frutas.append(Fruta { nombre: 'naranja', precio: 3 });
///
/// let resultado = fruit_party(frutas);
/// // resultado: { "manzana": 9, "pera": 3 }
/// ```
/// 
/// # Returns
///
/// Un diccionario donde la clave es el nombre de la fruta y el valor es la sumatoria de los precios.
fn fruit_party(frutas: Array<Fruta>) -> Felt252Dict<u32> {
    let mut diccionario = Felt252DictTrait::<u32>::new();
    // TODO: Implementar el contenido de la funcion
    diccionario
}

// Correr los tests usando 'cairo-test ./ejercicios/fruit_party.cairo'
#[cfg(test)]
mod tests {
    use super::fruit_party;
    use super::Fruta;
    use array::ArrayTrait;
    use dict::Felt252DictTrait;
    
    #[test]
    #[available_gas(20000000)]
    fn fruit_party_happy_path() {
        let mut frutas: Array<Fruta> = ArrayTrait::new();
        frutas.append(Fruta { nombre: 'manzana', precio: 7 });
        frutas.append(Fruta { nombre: 'sandia', precio: 12 });
        frutas.append(Fruta { nombre: 'naranja', precio: 2 });
        frutas.append(Fruta { nombre: 'naranja', precio: 3 });

        let mut expected = Felt252DictTrait::<u32>::new();
        expected.insert('manzana', 7);
        expected.insert('sandia', 12);
        expected.insert('naranja', 5);

        let mut actual = fruit_party(frutas);
        assert(actual.get('manzana') == expected.get('manzana'), 'error find_digits_happy_path');
        assert(actual.get('sandia') == expected.get('sandia'), 'error find_digits_happy_path');
        assert(actual.get('naranja') == expected.get('naranja'), 'error find_digits_happy_path');
    } 

    #[test]
    #[available_gas(20000000)]
    fn empty_array_test() {
        let mut frutas: Array<Fruta> = ArrayTrait::new();

        let mut expected = Felt252DictTrait::<u32>::new();

        let mut actual = fruit_party(frutas);
        assert(actual.get('manzana') == expected.get('manzana'), 'error empty_array_test');
    } 

    #[test]
    #[available_gas(20000000)]
    fn free_fruit_test() {
        let mut frutas: Array<Fruta> = ArrayTrait::new();
        frutas.append(Fruta { nombre: 'manzana', precio: 7 });
        frutas.append(Fruta { nombre: 'manzana', precio: 0 });
        
        let mut expected = Felt252DictTrait::<u32>::new();
        expected.insert('manzana', 7);

        let mut actual = fruit_party(frutas);
        assert(actual.get('manzana') == expected.get('manzana'), 'error free_fruit_test');
    } 

}

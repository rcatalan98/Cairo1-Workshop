// Ejemplos - Diccionarios
// Podes ejecutar el ejemplo con 'cairo-run ./ejemplos/diccionario.cairo'
// Felt252Dict docs: https://github.com/starkware-libs/cairo/blob/9a64422eaa311cd5fd41e6a1aa3ffed94fc243a3/docs/reference/src/components/cairo/modules/language_constructs/pages/felt252dict-type.adoc#L4
use debug::PrintTrait;
use dict::Felt252DictTrait;

// Cairo actualmente admite un tipo de diccionario llamado Felt252Dict 
// que asigna claves de tipo felt252 a otros tipos simples, tales como, u8, u16, u32, u64, u128, felt252 y nullable<T>. 
// El tipo nullable<T> permite que el diccionario contenga tipos más complejos.

// De forma predeterminada, se devuelve el valor 0, o un valor lógicamente equivalente a 0, para claves que no existen.
fn main() {
    let mut diccionario = Felt252DictTrait::<u32>::new();
    // Recordemos que las palabras en Cairo por debajo son un felt252, por lo que podriamos utilizarlas en el diccionario
    let palabra = 'hola'; 

    diccionario.insert(palabra, 100);
    diccionario.insert(10, 9);
    
    let valor_hola = diccionario.get('hola'); // 100
    let mut valor_10 = diccionario.get(10); // 9
    
    // En caso de que intentemos agregar un valor en una clave existente,
    // Estamos sobreescribiendo el valor asignado a esa clave
    diccionario.insert(10, valor_10 + 100);
    valor_10 = diccionario.get(10); // 109

    valor_hola.print();
    valor_10.print();
    diccionario.get(11).print(); // 0
}
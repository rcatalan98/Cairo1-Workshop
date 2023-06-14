// Ejercicio 1 - mini-max-sum ⭐ 
// https://www.hackerrank.com/challenges/mini-max-sum/problem

fn mini_max_sum(arr: Array<u128>) -> (u128, u128) {
    // TODO: Implementar el contenido de la funcion
    (1, 2)
}

// Correr los test usando 'cairo-test ./ejercicios/mini_max_sum.cairo'
#[cfg(test)]
mod tests {
    use array::ArrayTrait;
    use super::mini_max_sum;

    #[test]
    #[available_gas(200000)]
    fn sum_of_positive_numbers() {
        let mut arr = ArrayTrait::new();
        arr.append(1);
        arr.append(3);
        arr.append(5);
        arr.append(7);
        arr.append(9);
        let (min, max) = mini_max_sum(arr); 
        assert(min == 16, 'min should be 16');
        assert(max == 24, 'max should be 24');
    }

    #[test]
    #[available_gas(200000)]
    fn sum_of_numbers_asc() {
        let mut arr = ArrayTrait::new();
        arr.append(1);
        arr.append(2);
        arr.append(3);
        arr.append(4);
        arr.append(5);
        let (min, max) = mini_max_sum(arr); 
        assert(min == 10, 'min should be 10');
        assert(max == 14, 'max should be 14');
    }

    #[test]
    #[available_gas(200000)]
    fn sum_of_numbers_desc() {
        let mut arr = ArrayTrait::new();
        arr.append(5);
        arr.append(4);
        arr.append(3);
        arr.append(2);
        arr.append(1);
        let (min, max) = mini_max_sum(arr); 
        assert(min == 10, 'min should be 10');
        assert(max == 14, 'max should be 14');
    }

    #[test]
    #[available_gas(200000)]
    fn sum_of_zeros() {
        let mut arr = ArrayTrait::new();
        arr.append(0);
        arr.append(0);
        arr.append(0);
        arr.append(0);
        arr.append(0);
        let (min, max) = mini_max_sum(arr); 
        assert(min == 0, 'min should be 0');
        assert(max == 0, 'max should be 0');
    }
}

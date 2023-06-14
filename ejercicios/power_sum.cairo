// Ejercicio 4 - the-power-sum ⭐
// https://www.hackerrank.com/challenges/the-power-sum/problem


fn power_sum(x: u128, n: u128) -> u128 {
    // TODO: Implementar el contenido de la funcion
    0
}

// Correr los test usando 'cairo-test ./ejercicios/power_sum.cairo'
#[cfg(test)]
mod tests {
    use super::power_sum;

    #[test]
    #[available_gas(200000)]
    fn test_power_sum_x_10_n_2() {
        assert(power_sum(10, 2) == 1, 'error power_sum_x_10_n_2');
    }

    #[test]
    #[available_gas(200000)]
    fn test_power_sum_x_100_n_2() {
        assert(power_sum(100, 2) == 3, 'error power_sum_x_100_n_2');
    }

    #[test]
    #[available_gas(200000)]
    fn test_power_sum_x_50_n_3() {
        assert(power_sum(50, 3) == 3, 'error power_sum_x_50_n_3');
    }

    #[test]
    #[available_gas(200000)]
    fn test_power_sum_x_25_n_2() {
        assert(power_sum(25, 2) == 2, 'error power_sum_x_25_n_2');
    }

    #[test]
    #[available_gas(200000)]
    fn test_power_sum_x_30_n_4() {
        assert(power_sum(30, 4) == 1, 'error power_sum_x_30_n_4');
    }
}

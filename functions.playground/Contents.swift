import Foundation

func noArgumentsAndNoReturnValue() {
    print("Hola me llamo victor")
}

noArgumentsAndNoReturnValue()


func plusTwo (value: Int) {
    let newValue = value + 2
}

func newPlusTwo(value: Int) -> Int {
    value + 2
}

newPlusTwo(value: 30)

func customAdd (value1: Int, value2: Int) -> Int {
    value1 + value2
}

let customAdded = customAdd(value1: 3, value2: 4)

func customMinus(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs - rhs
}

let customSubtracted = customMinus(20, 10)


@discardableResult
func customMinus(_ lhs: Int, _ rhs: Int) -> Int {
    lhs - rhs
}

// Aquí usamos la función y descartamos el resultado sin advertencia
customMinus(20, 10) // No hay advertencia porque usamos @discardableResult


//Se puede meter funciones dentro de funciones
func calcularPrecioTotal(precioBase: Double, descuento: Double) -> Double {
    // Función anidada para calcular el descuento aplicado
    func aplicarDescuento(precio: Double, porcentaje: Double) -> Double {
        return precio - (precio * porcentaje / 100)
    }
    
    // Llamada a la función interna
    let precioConDescuento = aplicarDescuento(precio: precioBase, porcentaje: descuento)
    return precioConDescuento
}

let total = calcularPrecioTotal(precioBase: 100.0, descuento: 10.0)
print(total) // Salida: 90


//Default values
func saludo(nombre: String = "victor") {
    print("¡Mi nombre es, \(nombre)!")
}


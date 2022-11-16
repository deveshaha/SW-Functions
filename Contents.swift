import UIKit

//FUNCIONES (Parámetros)
//Es necesario indicar si los parametros son de entrada y salida

func suma(numero1: Int, numero2: Int) -> Int {
    return numero1 + numero2
}

//En este caso ambos parametros (numero1 y numero2) son parametros internos y externos, se llaman igual
//Dentro y fuera de la función

let sum = suma(numero1: 3, numero2: 6)
print(sum)

//Se pueden tener paramnetros internos y externos


func dividir (dividendo a: Int, divisor b:Int) -> Int {
    return a/b
}

let resultadoDivision = dividir(dividendo: 10, divisor: 2)
print(resultadoDivision)

func sumPlus(a:Int, b:Int, thenMultiplyBy c: Int) -> Int{
    return(a + b) * c
}

let sumMul = sumPlus(a: 3, b: 4, thenMultiplyBy: 5)
print(sumMul)

//Para omitir el parametro externo, como se trabaja en java,
//se debe indicar explícitamente que lo omita. Se indica en la
//definicion de la funcion.

//Esto nos vale para no tener que utilizar ell parametro externo en la llamada a la función. Solo con poner el valor se envia como parametri a la función

func sinParametroExterno(_ a: String) -> Void {
    print("Esto es lo que estamos viendo ahora..." + a)
}

sinParametroExterno("Sin parametros externos")
let cadena = "Hola"
sinParametroExterno(cadena)

//Parametros por valor y por referencia valor: Se pasa una copia del objeto, los camhios en el interior de la función no se reflejan en el exterior

//Referencia: Se pasa la referencia al objeto. Si se cambia dentro de la función se ve reflejado también fuera.

func holaMundoValor(a: String){
    print(a)
}

var variableValor = "mundo"
holaMundoValor(a: variableValor)

//Se tienenn que indicar explícitamente si queremos pasar
//Una variable por referencia, que se pueda cambiar su valor (inout)

var parametro = "hola"

func holaMundo(a: inout String){
    a = a + " mundo"
}

holaMundo(a: &parametro)
print(parametro)















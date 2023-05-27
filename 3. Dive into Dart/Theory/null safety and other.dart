/*
        В первую очередь значение null - это экземпляр класса Null.

        В контексте Дарта null safety говорит нам о том, что если выражение 
    имеет статический тип, который не допускает значение null, то никакое возможное выполнение этого выражения никогда не будет иметь значение null.

        null safety нужна для того, чтобы исключить возможность ошибок, когда 
    вместо ожидаемого типа значения к нам приходит null.

        Is it possible to get a null-pointer-exception at runtime using null 
    safety?
        - no

        Null-assertion operator "?" - допускает значение null

        Bang operator "!" - утверждает, что значение не может быть null, если 
    оно будет null, то выбросится исключение.

        Is it possible to initialize a non-null variable and not give it a 
    value?
        - yes
*/

void main(List<String> args) {

    Example? ex = null;
    int ex1;
}

class Example
{
    int number = 1;
}

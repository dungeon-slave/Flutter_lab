/*
1. Cascade && spread operators: 

    Spread operator - подставляет все значения последовательности:

                var list = [1, 2, 3];
                var list2 = [0, ...list];

    Cascade operator - оператор предназначенный для работы с возвращённым объектом, по сути является синтаксическим сахаром и нужен только для того, чтобы не создавать дополнительную временную переменную:

                var paint = Paint()
                ..color = Colors.black
                ..strokeCap = StrokeCap.round
                ..strokeWidth = 5.0;

                The previous example is equivalent to this code:

                var paint = Paint();
                paint.color = Colors.black;
                paint.strokeCap = StrokeCap.round;
                paint.strokeWidth = 5.0;

    Null-safety версия cascade operator:

                querySelector('#confirm') // Get an object.
                ?..text = 'Confirm' // Use its members.
                ..classes.add('important')
                ..onClick.listen((e) => window.alert('Confirmed!'))
                ..scrollIntoView();

    Также каскадный оператор может быть вложенным:

                final addressBook = (AddressBookBuilder()
                    ..name = 'jenny'
                    ..email = 'jenny@example.com'
                    ..phone = (PhoneNumberBuilder()
                            ..number = '415-555-0100'
                            ..label = 'home')
                        .build())
                    .build();
*/
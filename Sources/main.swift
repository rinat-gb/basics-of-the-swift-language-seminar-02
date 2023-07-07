// 1. Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить
// на вклад, следующий аргумент это годовой процент, третий аргумент это срок.
//  Функция возвращает сколько денег получит пользователь по итогу.

func task1(amount: Double, percentRate: Double, duration: Int) -> Double {
    print("Задание №1")

    // вычисляем сумму процентов на этом счёте исходя из процентной ставки
    let percentage = amount / 100 * percentRate
    // вычисляем сколько набежит за указанное количество дней
    let total = amount + percentage * Double(duration)
    // и возвращаем результат
    return total
}

// 2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.

enum Pizza: String {
    case napoletana = "Pizza Napoletana"
    case calzone = "Pizza Calzone"
    case siciliana = "Pizza Siciliana"

    func getName() -> String {
        switch self {
        case .napoletana, .calzone, .siciliana: return rawValue
        }
    }
}

let napoletana: Pizza = .napoletana
var calzone = Pizza.calzone
var siciliana: Pizza = .siciliana

// 3. Добавить возможность получения названия пиццы через rawValue

func task3(pizza: Pizza) {
    print("Задание №3")
    print("Вы задали пиццу \"\(pizza.getName())\"\n")
}

let amount: Double = 10000
let percentRate: Double = 4
let duration = 5

let total = task1(amount: amount, percentRate: percentRate, duration: duration)

print("При сумме вклада \(amount), процентной ставке \(percentRate)% и сроке \(duration) дней получается общая сумма: \(total)\n")

task3(pizza: Pizza.calzone)

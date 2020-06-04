#language: ru

@Negative
@Discount
@IgnoreOnCIMainBuild
Функционал: создание заказа со скидкой по видам цены - негативный

Как тестировщик
Я хочу проверить что по заказу начисляются скидки согласно указанным условиям в Special Offers Rules
Чтобы избежать неправильного расчета

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _034001 выбор в заказе скидки которая не работает по выбранному соглашению
	И я открываю навигационную ссылку 'e1cib/list/Document.SalesOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля "Partner"
	И в таблице "List" я перехожу к строке:
		| 'Description'             |
		| 'Partner A' |
	И в таблице "List" я выбираю текущую строку
	И я нажимаю кнопку выбора у поля "Agreement"
	И в таблице "List" я перехожу к строке:
		| 'Description'                     |
		| 'Basic Agreements, TRY' |
	И в таблице "List" я выбираю текущую строку
	И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
	Тогда открылось окно 'Pick up items'
	И я меняю значение переключателя 'FastQuantity' на '2'
	И в таблице "ItemsList" я активизирую поле "Remaining"
	И в таблице "ItemsList" я выбираю текущую строку
	И я меняю значение переключателя 'FastQuantity' на '3'
	И в таблице "ItemsList" я перехожу к строке:
		| 'Info'         | 'Item'      |
		| '0 unit × 400' | 'Product 3' |
	И в таблице "ItemsList" я выбираю текущую строку
	И я нажимаю на кнопку 'OK'
	И я нажимаю на кнопку 'Post'
	И в таблице "ItemList" я нажимаю на кнопку '% Offers'
	Тогда открылось окно 'Pickup special offers'
	И в таблице "Offers" я перехожу к строке:
		| 'Presentation'            |
		| 'Discount 1 without Vat' |

# Сценарий: проверка отрабатывания скидки по которой закончился период действия
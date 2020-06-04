#language: ru
@tree
@Positive
@Test


Функционал: заполнение наименования в справочниках

Как Разработчик
Я хочу создать формы справочников
Чтобы пользователь мог заполнить первоначальные данные

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И Я устанавливаю в константу "ShowBetaTesting" значение "True"
	И Я устанавливаю в константу "ShowAlfaTestingSaas" значение "True"
	И Я устанавливаю в константу "UseItemKey" значение "True"
	И Я устанавливаю в константу "UseCompanies" значение "True"



Сценарий: _005010 заполнение наименования в справочнике "Countries"
	* Очистка справочника Countries
		И    Я закрыл все окна клиентского приложения
		И я удаляю все элементы Справочника "Countries"
		И в базе нет элементов Справочника "Countries"
	* Открытие формы создания Country
		И я открываю навигационную ссылку "e1cib/list/Catalog.Countries"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
	* Заполнение данных по Turkey
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Turkey'
		И в поле 'TR' я ввожу текст 'Turkey TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		Тогда В базе появился хотя бы один элемент справочника "Countries"
	* Заполнение данных по Ukraine и Kazakhstan
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Ukraine'
		И в поле с именем 'Description_tr' я ввожу текст 'Ukraine TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Kazakhstan'
		И в поле с именем 'Description_tr' я ввожу текст 'Kazakhstan TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Проверка наличия добавленных стран в справочнике
		Тогда я проверяю наличие элемента справочника "Countries" со значением поля "Description_en" "Turkey"
		Тогда я проверяю наличие элемента справочника "Countries" со значением поля "Description_tr" "Turkey TR"
		Тогда я проверяю наличие элемента справочника "Countries" со значением поля "Description_en" "Kazakhstan"
		Тогда я проверяю наличие элемента справочника "Countries" со значением поля "Description_en" "Ukraine"



Сценарий: _005011 заполнение наименования в справочнике "Currencies"
	* Очистка справочника Currencies
		И я удаляю все элементы Справочника "Currencies"
		И в базе нет элементов Справочника "Currencies"
	* Открытие формы создания Currencies
		И я открываю навигационную ссылку "e1cib/list/Catalog.Currencies"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
	* Создание валют: Turkish lira, American dollar, Euro, Ukraine Hryvnia
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Turkish lira'
		И в поле с именем 'Description_tr' я ввожу текст 'Turkish lira'
		И я нажимаю на кнопку 'Ok'
		И в поле 'Symbol' я ввожу текст 'TL'
		И в поле 'Code' я ввожу текст 'TRY'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'American dollar'
		И в поле с именем 'Description_tr' я ввожу текст 'American dollar'
		И я нажимаю на кнопку 'Ok'
		И в поле 'Symbol' я ввожу текст '$'
		И в поле 'Code' я ввожу текст 'USD'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Euro'
		И в поле с именем 'Description_tr' я ввожу текст 'Euro'
		И я нажимаю на кнопку 'Ok'
		И в поле 'Symbol' я ввожу текст '€'
		И в поле 'Code' я ввожу текст 'EUR'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Ukraine Hryvnia'
		И в поле с именем 'Description_tr' я ввожу текст 'Ukraine Hryvnia'
		И я нажимаю на кнопку 'Ok'
		И в поле 'Symbol' я ввожу текст '₴'
		И в поле 'Code' я ввожу текст 'UAH'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Проверка создания валют
		Тогда В базе появился хотя бы один элемент справочника "Currencies"
		Тогда я проверяю наличие элемента справочника "Currencies" со значением поля "Description_en" "Turkish lira"
		Тогда я проверяю наличие элемента справочника "Currencies" со значением поля "Description_tr" "Turkish lira"
		Тогда я проверяю наличие элемента справочника "Currencies" со значением поля "Description_en" "American dollar"
		Тогда я проверяю наличие элемента справочника "Currencies" со значением поля "Description_en" "Euro"
		Тогда я проверяю наличие элемента справочника "Currencies" со значением поля "Description_en" "Ukraine Hryvnia"


Сценарий: _005012 создание Integration settings для загрузки курса валют (без подключения обработки)
	* Создание настройки для загрузки курса Forex Seling (сайт tcmb.gov.tr)
		И я открываю навигационную ссылку "e1cib/list/Catalog.IntegrationSettings"
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'Description' я ввожу текст 'Forex Seling'
		И в поле 'Unique ID' я ввожу текст 'ForexSeling'
		И я нажимаю на кнопку 'Save'
		И из выпадающего списка "Integration type" я выбираю точное значение 'Currency rates'
		И я нажимаю кнопку выбора у поля "External data proc"
		И в таблице "List" я перехожу к строке:
			| 'Description'    |
			| 'ExternalTCMBGovTr' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Save and close'
		И Пауза 10
	* Создание настройки для загрузки курса Forex Buying (сайт tcmb.gov.tr)
		И я открываю навигационную ссылку "e1cib/list/Catalog.IntegrationSettings"
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'Description' я ввожу текст 'Forex Buying'
		И в поле 'Unique ID' я ввожу текст 'ForexBuying'
		И я нажимаю на кнопку 'Save'
		И из выпадающего списка "Integration type" я выбираю точное значение 'Currency rates'
		И я нажимаю кнопку выбора у поля "External data proc"
		И в таблице "List" я перехожу к строке:
			| 'Description'    |
			| 'ExternalTCMBGovTr' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Save and close'
		И Пауза 10
	* Создание настройки для загрузки курса (сайт bank.gov.ua)
		И я открываю навигационную ссылку "e1cib/list/Catalog.IntegrationSettings"
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'Description' я ввожу текст 'Bank UA'
		И в поле 'Unique ID' я ввожу текст 'BankUA'
		И я нажимаю на кнопку 'Save'
		И из выпадающего списка "Integration type" я выбираю точное значение 'Currency rates'
		И я нажимаю кнопку выбора у поля "External data proc"
		И в таблице "List" я перехожу к строке:
			| 'Description'    |
			| 'ExternalBankUa' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Save and close'
		И Пауза 10



Сценарий: _005013 заполнение наименования в справочнике "Companies"
	* Очистка справочника Companies
		И я удаляю все элементы Справочника "Companies"
		И в базе нет элементов Справочника "Companies"
	* Открытие формы для заполнения 
		И я открываю навигационную ссылку "e1cib/list/Catalog.Companies"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
	* Заполнение данных о компании
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Main Company'
		И в поле с именем 'Description_tr' я ввожу текст 'Main Company TR'
		И я нажимаю на кнопку 'Ok'
		И в поле с именем 'Country' я ввожу текст 'Turkey'
		И я устанавливаю флаг 'Our'
		И я нажимаю на кнопку 'Save'
	* Заполнение информации по Currency (Local currency и Reporting currency)
		И я перехожу к закладке "Currencies"
		* Создание и добавление Local currency
			И в таблице "Currencies" я нажимаю на кнопку с именем 'CurrenciesAdd'
			И в таблице "Currencies" я нажимаю кнопку выбора у реквизита "Movement type"
			И я нажимаю на кнопку с именем 'FormCreate'
			И в поле 'ENG' я ввожу текст 'Local currency'
			И я нажимаю кнопку выбора у поля "Currency"
			И в таблице "List" я перехожу к строке:
				| 'Code' | 'Description'  |
				| 'TRY'  | 'Turkish lira' |
			И в таблице "List" я выбираю текущую строку
			И я нажимаю кнопку выбора у поля "Source"
			И в таблице "List" я перехожу к строке:
				| 'Description'  |
				| 'Forex Seling' |
			И в таблице "List" я выбираю текущую строку
			И из выпадающего списка "Type" я выбираю точное значение 'Legal'
			И я нажимаю на кнопку 'Save and close'
			И Пауза 5
			И я нажимаю на кнопку с именем 'FormChoose'
			И в таблице "Currencies" я завершаю редактирование строки
		* Создание и добавление Reporting currency
			И в таблице "Currencies" я нажимаю на кнопку с именем 'CurrenciesAdd'
			И в таблице "Currencies" я нажимаю кнопку выбора у реквизита "Movement type"
			И я нажимаю на кнопку с именем 'FormCreate'
			И я нажимаю кнопку выбора у поля "Currency"
			И в таблице "List" я перехожу к строке:
				| 'Code' | 'Description'     |
				| 'USD'  | 'American dollar' |
			И в таблице "List" я активизирую поле "Description"
			И в таблице "List" я выбираю текущую строку
			И я нажимаю кнопку выбора у поля "Source"
			И в таблице "List" я перехожу к строке:
				| 'Description'  |
				| 'Forex Seling' |
			И в таблице "List" я выбираю текущую строку
			И из выпадающего списка "Type" я выбираю точное значение 'Reporting'
			И в поле 'ENG' я ввожу текст 'Reporting currency'
			И я нажимаю на кнопку 'Save and close'
			И Пауза 5
			И я нажимаю на кнопку с именем 'FormChoose'
			И в таблице "Currencies" я завершаю редактирование строки
		И я нажимаю на кнопку 'Save and close'
		И Пауза 5
	* Проверка наличия созданной компании в справочнике
		Тогда В базе появился хотя бы один элемент справочника "Companies"
		Тогда я проверяю наличие элемента справочника "Companies" со значением поля "Description_en" "Main Company" 
		Тогда я проверяю наличие элемента справочника "Companies" со значением поля "Description_tr" "Main Company TR"


Сценарий: создание Сurrency Movement type для валют соглашений
	* Открытие плана вида характеристик Currency movement type
		И я открываю навигационную ссылку "e1cib/list/ChartOfCharacteristicTypes.CurrencyMovementType"
	* Создание валюты для соглашений TRY
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'ENG' я ввожу текст 'TRY'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description'  |
			| 'TRY'  | 'Turkish lira' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля "Source"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Forex Seling' |
		И в таблице "List" я выбираю текущую строку
		И из выпадающего списка "Type" я выбираю точное значение 'Agreement'
		И я нажимаю на кнопку 'Save and close'
	* Создание валюты для соглашений EUR
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'ENG' я ввожу текст 'EUR'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description' |
			| 'EUR'  | 'Euro'        |
		И в таблице "List" я активизирую поле "Description"
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля "Source"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Forex Seling' |
		И в таблице "List" я выбираю текущую строку
		И из выпадающего списка "Type" я выбираю точное значение 'Agreement'
		И я нажимаю на кнопку 'Save and close'
	* Создание валюты для соглашений USD
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле 'ENG' я ввожу текст 'USD'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description'     |
			| 'USD'  | 'American dollar' |
		И в таблице "List" я активизирую поле "Description"
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля "Source"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Forex Seling' |
		И в таблице "List" я выбираю текущую строку
		И из выпадающего списка "Type" я выбираю точное значение 'Agreement'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 5


Сценарий: _005014 заполнение наименования в справочнике "Units"
	* Очистка справочника Units
		И я удаляю все элементы Справочника "Units"
		И в базе нет элементов Справочника "Units"
	* Открытие формы для заполнения "Units"
		И я открываю навигационную ссылку "e1cib/list/Catalog.Units"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormCreate'
	* Создание единицы измерения 'pcs'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'pcs'
		И в поле с именем 'Description_tr' я ввожу текст 'adet'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Создание единицы измерения для упаковки из 4-х pcs
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю кнопку выбора у поля с именем "BasisUnit"
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'box (4 pcs)'
		И в поле с именем 'Description_tr' я ввожу текст 'box (4 adet)'
		И я нажимаю на кнопку 'Ok'
		И в поле с именем 'Quantity' я ввожу текст '4'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Создание единицы измерения для упаковки из 8 pcs
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю кнопку выбора у поля с именем "BasisUnit"
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'box (8 pcs)'
		И в поле с именем 'Description_tr' я ввожу текст 'box (8 adet)'
		И я нажимаю на кнопку 'Ok'
		И в поле с именем 'Quantity' я ввожу текст '8'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Создание единицы измерения для упаковки из 16 pcs
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю кнопку выбора у поля с именем "BasisUnit"
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'box (16 pcs)'
		И в поле с именем 'Description_tr' я ввожу текст 'box (16 adet)'
		И я нажимаю на кнопку 'Ok'
		И в поле с именем 'Quantity' я ввожу текст '16'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Проверка наличия созданных элементов
		Тогда В базе появился хотя бы один элемент справочника "Units"
		Тогда я проверяю наличие элемента справочника "Units" со значением поля "Description_en" "pcs"  
		Тогда я проверяю наличие элемента справочника "Units" со значением поля "Description_tr" "adet"
		Тогда я проверяю наличие элемента справочника "Units" со значением поля "Description_en" "box (4 pcs)"
		Тогда я проверяю наличие элемента справочника "Units" со значением поля "Description_en" "box (8 pcs)"
		Тогда я проверяю наличие элемента справочника "Units" со значением поля "Description_en" "box (16 pcs)"


Сценарий: _005015 заполнение элемента справочника "AccessGroups"
	* Очистка справочника AccessGroups
		И я удаляю все элементы Справочника "AccessGroups"
		И в базе нет элементов Справочника "AccessGroups"
	* Открытие формы для заполнения AccessGroups
		И я открываю навигационную ссылку "e1cib/list/Catalog.AccessGroups"
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
	* Заполнение данных по Admin
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'Admin'
		И в поле с именем 'Description_tr' я ввожу текст 'Admin TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Проверка наличия созданных AccessGroups
		Тогда В базе появился хотя бы один элемент справочника "AccessGroups"
		Тогда я проверяю наличие элемента справочника "AccessGroups" со значением поля "Description_en" "Admin"  
		Тогда я проверяю наличие элемента справочника "AccessGroups" со значением поля "Description_tr" "Admin TR"

Сценарий: _005016 заполнение элемента справочника "AccessProfiles"
	* Очистка справочника AccessProfiles
		И я удаляю все элементы Справочника "AccessProfiles"
		И в базе нет элементов Справочника "AccessProfiles"
	* Открытие формы для заполнения  AccessProfiles
		И я открываю навигационную ссылку "e1cib/list/Catalog.AccessProfiles"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
	* Заполнение данных по Admin
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'Admin'
		И в поле с именем 'Description_tr' я ввожу текст 'Admin TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем 'RolesUpdateRoles'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Проверка наличия созданных AccessProfiles
		Тогда В базе появился хотя бы один элемент справочника "AccessProfiles"
		Тогда я проверяю наличие элемента справочника "AccessProfiles" со значением поля "Description_en" "Admin"  
		Тогда я проверяю наличие элемента справочника "AccessProfiles" со значением поля "Description_tr" "Admin TR"




Сценарий: _005018 заполнение наименования в справочнике "CashAccounts"
	# И Я устанавливаю ссылку 'https://bilist.atlassian.net/browse/IRP-324' с именем 'IRP-324'
	* Очистка справочника CashAccounts
		И я удаляю все элементы Справочника "CashAccounts"
		И в базе нет элементов Справочника "CashAccounts"
	* Открытие формы для заполнения Accounts
		И я открываю навигационную ссылку "e1cib/list/Catalog.CashAccounts"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormCreate'
	* Создание и проверка создания касс: Cash desk №1, Cash desk №2, Cash desk №3
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Cash desk №1'
		И в поле с именем 'Description_tr' я ввожу текст 'Cash desk №1 TR'
		И я нажимаю на кнопку 'Ok'
		Тогда элемент формы с именем "Type" стал равен 'Cash'
		И я нажимаю кнопку выбора у поля "Company"
		И в таблице "List" я перехожу к строке:
			| Description  |
			| Main Company |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		Тогда В базе появился хотя бы один элемент справочника "CashAccounts"
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_en" "Cash desk №1"  
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_tr" "Cash desk №1 TR" 
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Cash desk №2'
		И в поле с именем 'Description_tr' я ввожу текст 'Cash desk №2 TR'
		И я нажимаю на кнопку 'Ok'
		Тогда элемент формы с именем "Type" стал равен 'Cash'
		И я нажимаю кнопку выбора у поля "Company"
		И в таблице "List" я перехожу к строке:
			| Description  |
			| Main Company |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_en" "Cash desk №2"  
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_tr" "Cash desk №2 TR" 
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Cash desk №3'
		И в поле с именем 'Description_tr' я ввожу текст 'Cash desk №3 TR'
		И я нажимаю на кнопку 'Ok'
		Тогда элемент формы с именем "Type" стал равен 'Cash'
		И я нажимаю кнопку выбора у поля "Company"
		И в таблице "List" я перехожу к строке:
			| Description  |
			| Main Company |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_en" "Cash desk №3"  
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_tr" "Cash desk №3 TR" 
	* Создание и проверка создания банковских счетов: Bank account TRY, Bank account USD, Bank account EUR
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Bank account, TRY'
		И в поле с именем 'Description_tr' я ввожу текст 'Bank account, TRY TR'
		И я нажимаю на кнопку 'Ok'
		И я меняю значение переключателя с именем "Type" на 'Bank'
		И в поле 'Number' я ввожу текст '112000000018'
		И в поле 'Bank name' я ввожу текст 'OTP'
		И я нажимаю кнопку выбора у поля "Company"
		И в таблице "List" я перехожу к строке:
			| Description  |
			| Main Company |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля с именем "Currency"
		И в таблице "List" я перехожу к строке:
			| Code | Description  |
			| TRY  | Turkish lira |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_en" "Bank account, TRY"  
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_tr" "Bank account, TRY TR" 
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Bank account, USD'
		И в поле с именем 'Description_tr' я ввожу текст 'Bank account, USD TR'
		И я нажимаю на кнопку 'Ok'
		И я меняю значение переключателя с именем "Type" на 'Bank'
		И в поле 'Number' я ввожу текст '112000000019'
		И в поле 'Bank name' я ввожу текст 'OTP'
		И я нажимаю кнопку выбора у поля "Company"
		И в таблице "List" я перехожу к строке:
			| Description  |
			| Main Company |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля с именем "Currency"
		И в таблице "List" я перехожу к строке:
			| Code | Description     |
			| USD  | American dollar |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_en" "Bank account, USD"  
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_tr" "Bank account, USD TR" 
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Bank account, EUR'
		И в поле с именем 'Description_tr' я ввожу текст 'Bank account, EUR TR'
		И я нажимаю на кнопку 'Ok'
		И я меняю значение переключателя с именем "Type" на 'Bank'
		И в поле 'Number' я ввожу текст '112000000020'
		И в поле 'Bank name' я ввожу текст 'OTP'
		И я нажимаю кнопку выбора у поля "Company"
		И в таблице "List" я перехожу к строке:
			| Description  |
			| Main Company |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля с именем "Currency"
		И в таблице "List" я перехожу к строке:
			| Code | Description |
			| EUR  | Euro        |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_en" "Bank account, EUR"  
		Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_tr" "Bank account, EUR TR"
	* Создание банковского счета с признаком Transit
		* Создание Transit Main
			И я нажимаю на кнопку с именем 'FormCreate'
			И я нажимаю на кнопку открытия поля с именем "Description_en"
			И в поле с именем 'Description_en' я ввожу текст 'Transit Main'
			И в поле с именем 'Description_tr' я ввожу текст 'Transit Main'
			И я нажимаю на кнопку 'Ok'
			И я меняю значение переключателя с именем "Type" на 'Transit'
			И я нажимаю кнопку выбора у поля "Company"
			И в таблице "List" я перехожу к строке:
				| Description  |
				| Main Company |
			И в таблице "List" я выбираю текущую строку
			И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
			И Пауза 5
			Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_en" "Transit Main"
		* Создание Transit Second
			И я нажимаю на кнопку с именем 'FormCreate'
			И я нажимаю на кнопку открытия поля с именем "Description_en"
			И в поле с именем 'Description_en' я ввожу текст 'Transit Second'
			И в поле с именем 'Description_tr' я ввожу текст 'Transit Second'
			И я нажимаю на кнопку 'Ok'
			И я меняю значение переключателя с именем "Type" на 'Transit'
			И я нажимаю кнопку выбора у поля "Company"
			И в таблице "List" я перехожу к строке:
				| Description  |
				| Main Company |
			И в таблице "List" я выбираю текущую строку
			И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
			И Пауза 5
			Тогда я проверяю наличие элемента справочника "CashAccounts" со значением поля "Description_en" "Transit Second"
	* Указание Transit account в Bank account, TRY
		И я открываю навигационную ссылку 'e1cib/list/Catalog.CashAccounts'
		И в таблице "List" я перехожу к строке:
			| 'Description'       |
			| 'Bank account, TRY' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля "Transit account"
		И в таблице "List" я перехожу к строке:
			| 'Description'  |
			| 'Transit Main' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Save and close'
	* Указание Transit account в Bank account, USD
		И в таблице "List" я перехожу к строке:
			| 'Description'       |
			| 'Bank account, USD' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля "Transit account"
		И в таблице "List" я перехожу к строке:
			| 'Description'    |
			| 'Transit Second' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку 'Save and close'


Сценарий: _005022 создание клиентов в справочнике "Partners"
	* Очистка справочника Partners
		И я удаляю все элементы Справочника "Partners"
		И в базе нет элементов Справочника "Partners"
	* Открытие формы создания Partners
		И я открываю навигационную ссылку "e1cib/list/Catalog.Partners"
		И Пауза 2
	* Создание партнеров: Ferron BP, Kalipso, Manager B, Lomaniti
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Ferron BP'
		И в поле с именем 'Description_tr' я ввожу текст 'Ferron BP TR'
		И я нажимаю на кнопку 'Ok'
		И я устанавливаю флаг с именем 'Customer'
		И я устанавливаю флаг с именем 'Vendor'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		Тогда В базе появился хотя бы один элемент справочника "Partners"
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Kalipso'
		И в поле с именем 'Description_tr' я ввожу текст 'Kalipso TR'
		И я нажимаю на кнопку 'Ok'
		И я устанавливаю флаг с именем 'Customer'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Manager B'
		И в поле с именем 'Description_tr' я ввожу текст 'Manager B TR'
		И я нажимаю на кнопку 'Ok'
		И я устанавливаю флаг с именем 'Customer'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Lomaniti'
		И в поле с именем 'Description_tr' я ввожу текст 'Lomaniti TR'
		И я нажимаю на кнопку 'Ok'
		И я устанавливаю флаг с именем 'Customer'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
	* Проверка создания партнеров
		Тогда я проверяю наличие элемента справочника "Partners" со значением поля "Description_en" "Ferron BP"  
		Тогда я проверяю наличие элемента справочника "Partners" со значением поля "Description_tr" "Ferron BP TR"
		Тогда я проверяю наличие элемента справочника "Partners" со значением поля "Description_en" "Kalipso"
		Тогда я проверяю наличие элемента справочника "Partners" со значением поля "Description_en" "Manager B"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "Partners" со значением поля "Description_en" "Lomaniti"

Сценарий: _005023 заполнение наименования в справочнике "PartnerSegments"
	* Очистка справочника PartnerSegments
		И я удаляю все элементы Справочника "PartnerSegments"
		И в базе нет элементов Справочника "PartnerSegments"
	* Открытие формы создания PartnerSegments
		И я открываю навигационную ссылку "e1cib/list/Catalog.PartnerSegments"
		И Пауза 2
	* Создание сегментов: Retail, Dealer
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'Retail'
		И в поле с именем 'Description_tr' я ввожу текст 'Retail TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 2
		Тогда В базе появился хотя бы один элемент справочника "PartnerSegments"
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'Dealer'
		И в поле с именем 'Description_tr' я ввожу текст 'Dealer TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 2
	* Проверка создания сегментов
		Тогда я проверяю наличие элемента справочника "PartnerSegments" со значением поля "Description_en" "Dealer"  
		Тогда я проверяю наличие элемента справочника "PartnerSegments" со значением поля "Description_tr" "Dealer TR"
		Тогда я проверяю наличие элемента справочника "PartnerSegments" со значением поля "Description_tr" "Retail TR"
		Тогда я проверяю наличие элемента справочника "PartnerSegments" со значением поля "Description_en" "Retail" 

Сценарий: _005024 заполнение наименования в справочнике "PaymentSchedules"
	* Очистка справочника PaymentSchedules
		И я удаляю все элементы Справочника "PaymentSchedules"
		И в базе нет элементов Справочника "PaymentSchedules"
	* Открытие формы и создание PaymentSchedules
		И я открываю навигационную ссылку "e1cib/list/Catalog.PaymentSchedules"
		Когда создаю элемент справочника с наименованием Test
	* Проверка создания PaymentSchedules
		Тогда В базе появился хотя бы один элемент справочника "PaymentSchedules"
		Тогда я проверяю наличие элемента справочника "PaymentSchedules" со значением поля "Description_en" "Test ENG"  
		Тогда я проверяю наличие элемента справочника "PaymentSchedules" со значением поля "Description_tr" "Test TR"
	* Удаление созданных элементов 
		И я удаляю все элементы Справочника "PaymentSchedules"


Сценарий: _005026 заполнение наименования в справочнике "ItemSegments"
	* Открытие формы и создание ItemSegments
		И я открываю навигационную ссылку "e1cib/list/Catalog.ItemSegments"
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Sale autum'
		И в поле с именем 'Description_tr' я ввожу текст 'Sale autum TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 2
	* Проверка создания ItemSegments
		Тогда я проверяю наличие элемента справочника "ItemSegments" со значением поля "Description_en" "Sale autum"
		Тогда я проверяю наличие элемента справочника "ItemSegments" со значением поля "Description_tr" "Sale autum TR"



Сценарий: _005027 заполнение наименования в справочнике "PaymentTypes"
	* Очистка справочника PaymentTypes
		И я удаляю все элементы Справочника "PaymentTypes"
		И в базе нет элементов Справочника "PaymentTypes"
	* Открытие формы и создание PaymentTypes
		И я открываю навигационную ссылку "e1cib/list/Catalog.PaymentTypes"
		Когда создаю элемент справочника с наименованием Test
		И Я закрываю текущее окно
	* Проверка создания PaymentTypes
		Тогда В базе появился хотя бы один элемент справочника "PaymentTypes"
		Тогда я проверяю наличие элемента справочника "PaymentTypes" со значением поля "Description_en" "Test ENG"  
		Тогда я проверяю наличие элемента справочника "PaymentTypes" со значением поля "Description_tr" "Test TR"
	* Удаление созданных элементов 
		И я удаляю все элементы Справочника "PaymentTypes"


Сценарий: _005028 заполнение наименования в справочнике "PriceTypes"
	# * Очистка справочника PriceTypes
		# И я удаляю все элементы Справочника "PriceTypes"
		# И в базе нет элементов Справочника "PriceTypes"
	* Открытие формы и создание цен клиентов Basic Price Types, Price USD, Discount Price TRY 1, Discount Price TRY 2, Basic Price without VAT, Discount 1 TRY without VAT, Discount 2 TRY without VAT
		И я открываю навигационную ссылку "e1cib/list/Catalog.PriceTypes"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Basic Price Types'
		И в поле с именем 'Description_tr' я ввожу текст 'Basic Price Types TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| TRY  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Price USD'
		И в поле с именем 'Description_tr' я ввожу текст 'Price USD TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| USD  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Discount Price TRY 1'
		И в поле с именем 'Description_tr' я ввожу текст 'Discount Price TRY 1 TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| TRY  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Discount Price TRY 2'
		И в поле с именем 'Description_tr' я ввожу текст 'Discount Price TRY 2 TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| TRY  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Basic Price without VAT'
		И в поле с именем 'Description_tr' я ввожу текст 'Basic Price without VAT'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| TRY  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Discount 1 TRY without VAT'
		И в поле с именем 'Description_tr' я ввожу текст 'Discount 1 TRY without VAT'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| TRY  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Discount 2 TRY without VAT'
		И в поле с именем 'Description_tr' я ввожу текст 'Discount 2 TRY without VAT'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| TRY  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
	* Создание видов цен для поставщиков: Vendor price, TRY, Vendor price, USD, Vendor price, EUR
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Vendor price, TRY'
		И в поле с именем 'Description_tr' я ввожу текст 'Vendor price, TRY TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| TRY  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Vendor price, USD'
		И в поле с именем 'Description_tr' я ввожу текст 'Vendor price, USD TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| USD  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Vendor price, EUR'
		И в поле с именем 'Description_tr' я ввожу текст 'Vendor price, EUR TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Currency"
		И в таблице "List" я перехожу к строке:
			| Code |
			| EUR  |
		И в таблице "List" я выбираю текущую строку
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
	* Проверка созданных видов цен поставщиков
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Vendor price, TRY"
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Vendor price, USD"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Vendor price, EUR"
		И Пауза 2
	* Проверка созданных видов цен клиентов
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Basic Price Types"
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_tr" "Basic Price Types TR"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Price USD"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Discount Price TRY 1"
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Discount Price TRY 2"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Basic Price without VAT"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Discount 1 TRY without VAT"
		Тогда я проверяю наличие элемента справочника "PriceTypes" со значением поля "Description_en" "Discount 2 TRY without VAT"



Сценарий: _005031 заполнение справочника "SpecialOffers"
	* Очистка справочника SpecialOffers
		И я удаляю все элементы Справочника "SpecialOffers"
		И в базе нет элементов Справочника "SpecialOffers"
	* Открытие формы и создание SpecialOffers: Special Price
		И я открываю навигационную ссылку "e1cib/list/Catalog.SpecialOffers"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Special Price'
		И в поле с именем 'Description_tr' я ввожу текст 'Special Price TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю кнопку выбора у поля "Special offer type"
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю кнопку выбора у поля "External data proc"
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Special Price'
		И в поле с именем 'Description_tr' я ввожу текст 'Special Price'
		И я нажимаю на кнопку 'Ok'
		И в поле с именем 'Name' я ввожу текст 'Special Price'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И я жду закрытия окна 'External data proc (create)' в течение 20 секунд
		И я нажимаю на кнопку с именем 'FormChoose'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Special Price'
		И в поле с именем 'Description_tr' я ввожу текст 'Special Price'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 2
		И я нажимаю на кнопку с именем 'FormChoose'
		И в поле с именем 'Priority' я ввожу текст '2'
		И в поле с именем 'StartOf' я ввожу текст '03.12.2018  0:00:00'
		И в поле с именем 'EndOf' я ввожу текст '05.12.2018  0:00:00'
		И из выпадающего списка "Document type" я выбираю точное значение 'Sales'
		И я устанавливаю флаг с именем 'Manually'
		И я устанавливаю флаг с именем 'Launch'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 2
	* Проверка создания
		Тогда я проверяю наличие элемента справочника "SpecialOffers" со значением поля "Description_en" "Special Price"  
		Тогда я проверяю наличие элемента справочника "SpecialOffers" со значением поля "Description_tr" "Special Price TR"
	* Удаление созданных элементов 
		И я удаляю все элементы Справочника "SpecialOffers"

Сценарий: _005032 заполнение наименования в справочнике "Stores" + создание ордерного склада (UseGoodsReceipt и UseShipmentConfirmation)
	* Очистка справочника Stores
		И я удаляю все элементы Справочника "Stores"
		И в базе нет элементов Справочника "Stores"
	* Открытие формы для создания "Stores"
		# И Я устанавливаю ссылку 'https://bilist.atlassian.net/browse/IRP-185' с именем 'IRP-185'
		# И Я устанавливаю ссылку 'https://bilist.atlassian.net/browse/IRP-195' с именем 'IRP-195'
		И я открываю навигационную ссылку "e1cib/list/Catalog.Stores"
		И Пауза 2
	* Заполнение данных по 'Store 01'
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'Store 01'
		И в поле с именем 'Description_tr' я ввожу текст 'Store 01 TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
		Тогда В базе появился хотя бы один элемент справочника "Stores"
		И Пауза 2
	* Заполнение данных по 'Store 02'
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'Store 02'
		И в поле с именем 'Description_tr' я ввожу текст 'Store 02 TR'
		И я нажимаю на кнопку 'Ok'
		И я устанавливаю флаг с именем 'UseGoodsReceipt'
		И я устанавливаю флаг с именем 'UseShipmentConfirmation'
		И     элемент формы с именем "Transit" стал равен 'No'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Заполнение данных по 'Store 03'
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'Store 03'
		И в поле с именем 'Description_tr' я ввожу текст 'Store 03 TR'
		И я нажимаю на кнопку 'Ok'
		И я устанавливаю флаг с именем 'UseGoodsReceipt'
		И я устанавливаю флаг с именем 'UseShipmentConfirmation'
		И     элемент формы с именем "Transit" стал равен 'No'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Заполнение данных по 'Store 04'
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'Store 04'
		И в поле с именем 'Description_tr' я ввожу текст 'Store 04 TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Проверка создания "Stores"
		Тогда я проверяю наличие элемента справочника "Stores" со значением поля "Description_en" "Store 01"  
		Тогда я проверяю наличие элемента справочника "Stores" со значением поля "Description_tr" "Store 01 TR"
		Тогда я проверяю наличие элемента справочника "Stores" со значением поля "Description_en" "Store 02"  
		Тогда я проверяю наличие элемента справочника "Stores" со значением поля "Description_en" "Store 03"
		Тогда я проверяю наличие элемента справочника "Stores" со значением поля "Description_en" "Store 04"

Сценарий: _005033 заполнение наименования в справочнике "TaxRates"
	* Очистка справочника TaxRates
		И я удаляю все элементы Справочника "TaxRates"
		И в базе нет элементов Справочника "TaxRates"
	* Открытие формы для создания "TaxRates"
		И я открываю навигационную ссылку "e1cib/list/Catalog.TaxRates"
		И Пауза 2
	* Создание налоговой ставки '8%'
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст '8%'
		И в поле с именем 'Description_tr' я ввожу текст '8% TR'
		И я нажимаю на кнопку 'Ok'
		И в поле с именем 'Rate' я ввожу текст '8,000000000000'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Создание налоговой ставки '18%'
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст '18%'
		И в поле с именем 'Description_tr' я ввожу текст '18% TR'
		И я нажимаю на кнопку 'Ok'
		И в поле 'Rate' я ввожу текст '18,000000000000'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Создание налоговой ставки 'Without VAT'
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст 'Without VAT'
		И в поле с именем 'Description_tr' я ввожу текст 'Without VAT TR'
		И я нажимаю на кнопку 'Ok'
		И в поле с именем 'Rate' я ввожу текст '0,000000000000'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Создание налоговой ставки '0%'
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст '0%'
		И в поле с именем 'Description_tr' я ввожу текст '0%'
		И я нажимаю на кнопку 'Ok'
		И в поле с именем 'Rate' я ввожу текст '0,000000000000'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Создание налоговой ставки '1%'
		И я нажимаю на кнопку с именем 'FormCreate'
		И Пауза 2
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		# И я перехожу к закладке "< >"
		И в поле с именем 'Description_en' я ввожу текст '1%'
		И в поле с именем 'Description_tr' я ввожу текст '1%'
		И я нажимаю на кнопку 'Ok'
		И в поле с именем 'Rate' я ввожу текст '1,000000000000'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И Пауза 5
	* Проверка создания налоговых ставок
		Тогда В базе появился хотя бы один элемент справочника "TaxRates"
		Тогда я проверяю наличие элемента справочника "TaxRates" со значением поля "Description_en" "8%"  
		Тогда я проверяю наличие элемента справочника "TaxRates" со значением поля "Description_tr" "8% TR"
		Тогда я проверяю наличие элемента справочника "TaxRates" со значением поля "Description_en" "Without VAT"  
		Тогда я проверяю наличие элемента справочника "TaxRates" со значением поля "Description_en" "18%"
		Тогда я проверяю наличие элемента справочника "TaxRates" со значением поля "Description_en" "1%"



Сценарий: _005038 заполнение значений в справочнике "CompanyTypes"
	# И Я устанавливаю ссылку 'https://bilist.atlassian.net/browse/IRP-170' с именем 'IRP-170'
	* Открытие формы создания CompanyTypes
		И я открываю навигационную ссылку "e1cib/list/Catalog.CompanyTypes"
	* Создание типов компаний: Entrepreneur, Legal entity, Private individual
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Entrepreneur'
		И в поле с именем 'Description_tr' я ввожу текст 'Entrepreneur TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Legal entity'
		И в поле с именем 'Description_tr' я ввожу текст 'Legal entity TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле с именем 'Description_en' я ввожу текст 'Private individual'
		И в поле с именем 'Description_tr' я ввожу текст 'Private individual TR'
		И я нажимаю на кнопку 'Ok'
		И В открытой форме я нажимаю на кнопку с именем "FormWriteAndClose"
	* Проверка создания 
		Тогда я проверяю наличие элемента справочника "CompanyTypes" со значением поля "Description_en" "Entrepreneur"  
		Тогда я проверяю наличие элемента справочника "CompanyTypes" со значением поля "Description_en" "Legal entity"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "CompanyTypes" со значением поля "Description_en" "Private individual" 

Сценарий: _005039 заполнение справочника статусов для InventoryTransferOrder
	* Открытие формы создания ObjectStatuses
		И я открываю навигационную ссылку "e1cib/list/Catalog.ObjectStatuses"
	* Присвоение предопределенному элементу InventoryTransferOrder наименования 
		И в таблице "List" я разворачиваю строку:
			| 'Description'    |
			| 'Object statuses' |
		И в таблице "List" я перехожу к строке:
			| Predefined data item name |
			| InventoryTransferOrder                |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Inventory transfer order'
		И в поле 'TR' я ввожу текст 'Inventory transfer order TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 10
	* Добавление статуса "Wait"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Inventory transfer order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Inventory transfer order'
		И я устанавливаю флаг 'Set by default'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Wait'
		И в поле 'TR' я ввожу текст 'Wait TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* Добавление статуса "Approved"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Inventory transfer order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Inventory transfer order'
		И я устанавливаю флаг 'Posting'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Approved'
		И в поле 'TR' я ввожу текст 'Approved TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* Добавление статуса "Send"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Inventory transfer order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Inventory transfer order'
		И я устанавливаю флаг 'Posting'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Send'
		И в поле 'TR' я ввожу текст 'Send TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* Добавление статуса "Receive"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Inventory transfer order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Inventory transfer order'
		И я устанавливаю флаг 'Posting'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Receive'
		И в поле 'TR' я ввожу текст 'Receive TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
		И Я закрываю текущее окно

Сценарий: _005040 заполнение справочника статусов для Outgoing Payment Order
	* Открытие формы создания ObjectStatuses
		И я открываю навигационную ссылку "e1cib/list/Catalog.ObjectStatuses"
	* Присвоение предопределенному элементу OutgoingPaymentOrder наименования 
		И в таблице "List" я разворачиваю строку:
			| 'Description'    |
			| 'Object statuses' |
		И в таблице "List" я перехожу к строке:
			| Predefined data item name |
			| OutgoingPaymentOrder                |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Outgoing payment order'
		И в поле 'TR' я ввожу текст 'Outgoing payment order TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 10
	* Добавление статуса "Wait"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Outgoing payment order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Outgoing payment order'
		И я устанавливаю флаг 'Set by default'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Wait'
		И в поле 'TR' я ввожу текст 'Wait TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* Добавление статуса "Approved"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Outgoing payment order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Outgoing payment order'
		И я устанавливаю флаг 'Posting'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Approved'
		И в поле 'TR' я ввожу текст 'Approved TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2

Сценарий: _005041 заполнение справочника статусов для Purchase return order
	* Открытие формы создания ObjectStatuses
		И я открываю навигационную ссылку "e1cib/list/Catalog.ObjectStatuses"
	* Присвоение предопределенному элементу PurchaseReturnOrder наименования 
		И в таблице "List" я разворачиваю строку:
			| 'Description'    |
			| 'Object statuses' |
		И в таблице "List" я перехожу к строке:
			| Predefined data item name |
			| PurchaseReturnOrder                |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Purchase return order'
		И в поле 'TR' я ввожу текст 'Purchase return order TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 10
	* Добавление статуса "Wait"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Purchase return order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Purchase return order'
		И я устанавливаю флаг 'Set by default'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Wait'
		И в поле 'TR' я ввожу текст 'Wait TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* Добавление статуса "Approved"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Purchase return order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Purchase return order'
		И я устанавливаю флаг 'Posting'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Approved'
		И в поле 'TR' я ввожу текст 'Approved TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2


Сценарий: _005042 заполнение справочника статусов для Purchase order
	* Открытие формы создания ObjectStatuses
		И я открываю навигационную ссылку "e1cib/list/Catalog.ObjectStatuses"
	* Присвоение предопределенному элементу PurchaseOrder наименования 
		И в таблице "List" я разворачиваю строку:
			| 'Description'    |
			| 'Object statuses' |
		И в таблице "List" я перехожу к строке:
			| Predefined data item name |
			| PurchaseOrder                |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Purchase order'
		И в поле 'TR' я ввожу текст 'Purchase order TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 10
	* Добавление статуса "Wait"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Purchase order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Purchase order'
		И я устанавливаю флаг 'Set by default'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Wait'
		И в поле 'TR' я ввожу текст 'Wait TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* Добавление статуса "Approved"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Purchase order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Purchase order'
		И я устанавливаю флаг 'Posting'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Approved'
		И в поле 'TR' я ввожу текст 'Approved TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2

Сценарий: _005043 заполнение справочника статусов для Sales return order
	* Открытие формы создания ObjectStatuses
		И я открываю навигационную ссылку "e1cib/list/Catalog.ObjectStatuses"
	* Присвоение предопределенному элементу SalesReturnOrder наименования 
		И в таблице "List" я разворачиваю строку:
			| 'Description'    |
			| 'Object statuses' |
		И в таблице "List" я перехожу к строке:
			| Predefined data item name |
			| SalesReturnOrder                |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Sales return order'
		И в поле 'TR' я ввожу текст 'Sales return order TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 10
	* Добавление статуса "Wait"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Sales return order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Sales return order'
		И я устанавливаю флаг 'Set by default'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Wait'
		И в поле 'TR' я ввожу текст 'Wait TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* Добавление статуса "Approved"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Sales return order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		# И из выпадающего списка "Object" я выбираю точное значение 'Sales return order'
		И я устанавливаю флаг 'Posting'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Approved'
		И в поле 'TR' я ввожу текст 'Approved TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2

Сценарий: _005044 заполнение справочника статусов для Sales order
	* Открытие формы создания ObjectStatuses
		И я открываю навигационную ссылку "e1cib/list/Catalog.ObjectStatuses"
	* Присвоение предопределенному элементу SalesOrder наименования 
		И в таблице "List" я разворачиваю строку:
			| 'Description'    |
			| 'Object statuses' |
		И в таблице "List" я перехожу к строке:
			| Predefined data item name |
			| SalesOrder                |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Sales order'
		И в поле 'TR' я ввожу текст 'Sales order TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 10
	* Добавление статуса "Wait"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Sales order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Wait'
		И в поле 'TR' я ввожу текст 'Wait TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* Добавление статуса "Approved"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Sales order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		И я устанавливаю флаг 'Posting'
		И я устанавливаю флаг 'Set by default'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Approved'
		И в поле 'TR' я ввожу текст 'Approved TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	* Добавление статуса "Done"
		И в таблице "List" я перехожу к строке:
		| 'Description'              |
		| 'Sales order' |
		И я нажимаю на кнопку с именем 'FormCreate'
		И я устанавливаю флаг 'Posting'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Done'
		И в поле 'TR' я ввожу текст 'Done TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Пауза 2
	И Я закрыл все окна клиентского приложения

Сценарий: _005045 проверка очистки поля UniqueID при копировании статуса
	* Открытие формы создания ObjectStatuses
		И я открываю навигационную ссылку "e1cib/list/Catalog.ObjectStatuses"
		И в таблице "List" я разворачиваю строку:
			| 'Description'    |
			| 'Object statuses' |
	* Копирование статуса
		И в таблице "List" я разворачиваю строку:
			| 'Description' | 'Predefined data item name' |
			| 'Sales order' | 'SalesOrder'                |
		И в таблице "List" я перехожу к строке:
			| 'Description' |
			| 'Wait'        |
		И в таблице "List" я нажимаю на кнопку с именем 'ListContextMenuCopy'
	* Проверка очистки поля UniqueID
		И     элемент формы с именем "UniqueID" стал равен ''
		И     элемент формы с именем "Description_en" стал равен 'Wait'
	И Я закрыл все окна клиентского приложения



Сценарий: _005046 заполнение Business units
	* Открытие формы создания BusinessUnits
		И я открываю навигационную ссылку "e1cib/list/Catalog.BusinessUnits"
	* Создание подразделения 'Front office'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Front office'
		И в поле 'TR' я ввожу текст 'Front office TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
	* Создание подразделения 'Accountants office'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Accountants office'
		И в поле 'TR' я ввожу текст 'Accountants office TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
	* Создание подразделения 'Distribution department'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Distribution department'
		И в поле 'TR' я ввожу текст 'Distribution department TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
	* Создание подразделения 'Logistics department'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Logistics department'
		И в поле 'TR' я ввожу текст 'Logistics department TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
	* Проверка создания Business units
		Тогда я проверяю наличие элемента справочника "BusinessUnits" со значением поля "Description_en" "Front office"
		Тогда я проверяю наличие элемента справочника "BusinessUnits" со значением поля "Description_en" "Accountants office"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "BusinessUnits" со значением поля "Description_en" "Distribution department"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "BusinessUnits" со значением поля "Description_en" "Logistics department"

Сценарий: _005047 заполнение Expense type
	* Открытие формы создания Expense type
		И я открываю навигационную ссылку "e1cib/list/Catalog.ExpenseAndRevenueTypes"
	* Создание статьи 'Rent'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Rent'
		И в поле 'TR' я ввожу текст 'Rent TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
	* Создание статьи  'Telephone communications'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Telephone communications'
		И в поле 'TR' я ввожу текст 'Telephone communications TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
	И я создаю статью 'Fuel'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Fuel'
		И в поле 'TR' я ввожу текст 'Fuel TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
	* Создание статьи  'Software'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Software'
		И в поле 'TR' я ввожу текст 'Software TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
	* Создание статьи  'Delivery'
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Delivery'
		И в поле 'TR' я ввожу текст 'Delivery TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
	* Проверка создания Expense type
		Тогда я проверяю наличие элемента справочника "ExpenseAndRevenueTypes" со значением поля "Description_en" "Rent"
		Тогда я проверяю наличие элемента справочника "ExpenseAndRevenueTypes" со значением поля "Description_en" "Telephone communications"
		Тогда я проверяю наличие элемента справочника "ExpenseAndRevenueTypes" со значением поля "Description_en" "Fuel"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "ExpenseAndRevenueTypes" со значением поля "Description_en" "Software"
		И Пауза 2
		Тогда я проверяю наличие элемента справочника "ExpenseAndRevenueTypes" со значением поля "Description_en" "Delivery"

Сценарий: _005048 заполнение наименования в справочнике "Tax analytics"
	* Открытие и заполнение формы Tax analytics
		И я открываю навигационную ссылку "e1cib/list/Catalog.TaxAnalytics"
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю на кнопку открытия поля с именем "Description_en"
		И в поле 'ENG' я ввожу текст 'Analytics 01'
		И в поле 'TR' я ввожу текст 'Analytics 01 TR'
		И я нажимаю на кнопку 'Ok'
		И я нажимаю на кнопку 'Save and close'
		И Я закрыл все окна клиентского приложения
		И Пауза 2
	* Проверка наличия созданных Tax analytics
		Тогда я проверяю наличие элемента справочника "TaxAnalytics" со значением поля "Description_en" "Analytics 01"  
		Тогда я проверяю наличие элемента справочника "TaxAnalytics" со значением поля "Description_tr" "Analytics 01 TR"


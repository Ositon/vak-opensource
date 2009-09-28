КАС2211 Файл ACP : Лист 1 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

				1		.ОБЛ	АЦПУ(1)
00 0000001 00 077 006 0020	3	ТАЦПУ	ЗР	020		;ПКЛ=0,ПКП=0
	   00 030 0000052	4		ПБ	НАЧТ2
				5	
				6	; ***************************************************************
				7	; *			 СТОП 2 - 37				*
				8	; *		ЛОВУШКИ ПРЕРЫВАНИЙ И ЭКСТРАКОДОВ		*
				9	; ***************************************************************
00 0000002 00 077 002 0047	10	ПВНЕ	ЧР	047
	   00 077 007 0002	11		ОСТ	2		;ВНЕШНЕЕ ПРЕРЫВАНИЕ
00 0000003 00 077 007 0003	12	ПЭР3	ОСТ	3		;ЭКСТРАКОД В РЕЖИМЕ 3
	   00 072 0000000
00 0000004 00 077 002 0037	13	ПВ12	ЧР	037		;ВНУТРЕННЕЕ ПРЕРЫВАНИЕ
	   00 077 007 0004	14		ОСТ	4		;  В РЕЖИМЕ 1-2
00 0000005 00 077 002 0037	15	ПЗ12	ЧР	037		;ЗАПРЕЩЕННАЯ КОМАНДА
	   00 077 007 0005	16		ОСТ	5		;  В РЕЖИМЕ 1-2
00 0000006 00 077 002 0037	17	ПВР3	ЧР	037		;ВНУТРЕННЕЕ ПРЕРЫВАНИЕ
	   00 077 007 0006	18		ОСТ	6		;  В РЕЖИМЕ 3
00 0000007 00 077 002 0037	19	ПЗК3	ЧР	037		;ЗАПРЕЩЕННАЯ КОМАНДА
	   00 077 007 0007	20		ОСТ	7		;  В РЕЖИМЕ 3
00 0000010 00 077 007 0010	21	ПЭ50	ОСТ	010		;ЭКСТРАКОД 050(РЕЖ.1-2)
	   00 072 0000000
00 0000011 00 077 007 0011	22	ПЭ51	ОСТ	011
	   00 072 0000000
00 0000012 00 077 007 0012	23	ПЭ52	ОСТ	012
	   00 072 0000000
00 0000013 00 077 007 0013	24	ПЭ53	ОСТ	013
	   00 072 0000000
00 0000014 00 077 007 0014	25	ПЭ54	ОСТ	014
	   00 072 0000000
00 0000015 00 077 007 0015	26	ПЭ55	ОСТ	015
	   00 072 0000000
00 0000016 00 077 007 0016	27	ПЭ56	ОСТ	016
	   00 072 0000000
00 0000017 00 077 007 0017	28	ПЭ57	ОСТ	017
	   00 072 0000000
00 0000020 00 077 007 0020	29	ПЭ60	ОСТ	020
	   00 072 0000000
00 0000021 00 077 007 0021	30	ПЭ61	ОСТ	021
	   00 072 0000000
00 0000022 00 077 007 0022	31	ПЭ62	ОСТ	022
	   00 072 0000000
00 0000023 00 077 007 0023	32	ПЭ63	ОСТ	023
	   00 072 0000000
00 0000024 00 077 007 0024	33	ПЭ64	ОСТ	024
	   00 072 0000000
00 0000025 00 077 007 0025	34	ПЭ65	ОСТ	025
	   00 072 0000000
00 0000026 00 077 007 0026	35	ПЭ66	ОСТ	026
	   00 072 0000000
00 0000027 00 077 007 0027	36	ПЭ67	ОСТ	027
	   00 072 0000000
00 0000030 00 077 007 0030	37	ПЭ70	ОСТ	030
	   00 072 0000000
00 0000031 00 077 007 0031	38	ПЭ71	ОСТ	031
	   00 072 0000000
00 0000032 00 077 007 0032	39	ПЭ72	ОСТ	032
	   00 072 0000000
00 0000033 00 077 007 0033	40	ПЭ73	ОСТ	033
	   00 072 0000000
00 0000034 00 077 007 0034	41	ПЭ74	ОСТ	034
	   00 072 0000000
КАС2211 Файл ACP : Лист 2 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

00 0000035 00 077 007 0035	42	ПЭ75	ОСТ	035
	   00 072 0000000
00 0000036 00 077 007 0036	43	ПЭ76	ОСТ	036
	   00 072 0000000
00 0000037 00 077 007 0037	44	ПЭ77	ОСТ	037
				45	; ***************************************************************
				46	; *			ХОРОШИЙ ОСТАНОВ				*
				47	; ***************************************************************
	   00 072 0000000
00 0000040 17 074 0000016	48	СТП	ПА	14,15
	   17 077 007 0040	49		ОСТ	040,15
00 0000041 00 030 0000052	50		ПБ	НАЧТ2		;ПРИ ПРОТАЛКИВАНИИ ПОВТОР ТЕСТА
				51	
	   00 072 0000000
00 0000042 00 010 0000365	52	НАЧТ1	СЧ	ТТ
	   00 077 050 0011	53		ИУ	011		;ПРИЗНАК ТТ - В ИС1
00 0000043 00 064 0000450	54		ЗН	ЯЧКС
	   13 074 3777333	55		ПА	ТАЦПУ-КСУМТ+1,11   ;И11=1 - ДЛИНА ОБЛАСТИ ТЕСТА
				56	; ***************************************************************
				57	; *		     КОНТРОЛЬНОЕ СУММИРОВАНИЕ			*
				58	; ***************************************************************
00 0000044 13 060 0000446	59	КСУМ	СТ	КСУМТ-1,11
	   00 013 0000450	60		ЦС	ЯЧКС		;СУММИРУЕМ ОЧЕРЕДНОЕ СЛОВО
00 0000045 00 000 0000450	61		ЗЧ	ЯЧКС
	   00 077 030 2760	62		ВР	02760
00 0000046 00 077 026 0071	63		СД	071
	   00 013 0000450	64		ЦС	ЯЧКС		;СУММИРУЕМ ЕГО ТЕГ
00 0000047 00 000 0000450	65		ЗЧ	ЯЧКС
	   13 033 0000044	66		КЦ	КСУМ,11		;ЦИКЛ СУММИРОВАНИЯ
00 0000050 00 012 0000447	67		СР	КСУМТ		;СРАВНЕНИЕ С ЭТАЛОННОЙ
	   00 050 0000052	68		УР	НАЧТ2		;  СУММОЙ
				69	; ***************************************************************
				70	; *				СТОП 1				*
				71	; *		НЕ СОВПАЛА КОНТРОЛЬНАЯ СУММА ТЕСТА		*
				72	; * ИНДИКАЦИЯ:							*
				73	; *  ВР	 - ЭТАЛОННАЯ КОНТРОЛЬНАЯ СУММА				*
				74	; *  РМР - ПОДСЧИТАННАЯ СУММА					*
				75	; *  СМ	 - КОД НЕСРАВНЕНИЯ					*
				76	; * ПРИ ПРОТАЛКИВАНИИ ВЫПОЛНЯЕТСЯ ПЕРЕХОД НА ПОДСЧЕТ КОНТРОЛЬ-	*
				77	; * НОЙ СУММЫ							*
				78	; ***************************************************************
00 0000051 00 077 007 0025	79		ОСТ	21
	   00 030 0000042	80		ПБ	НАЧТ1
				81	
				82	; ***************************************************************
				83	; *		    НАЧАЛЬНАЯ НАСТРОЙКА ТЕСТА			*
				84	; ***************************************************************
00 0000052 01 074 0000000	85	НАЧТ2	ПА	,1		;НОМЕР КАНАЛА = 0
	   00 010 0000364	86		СЧ	СТАЦП	
00 0000053 00 000 0000473	87		ЗЧ	НВУ		;НОМЕР АЦПУ = 0377
	   00 010 0000000	88		СЧ
00 0000054 00 000 0000451	89		ЗЧ	РЕЖИМТ		;'00' -> РЕЖИМТ
	   00 077 040 0003	90		УИ	3		;К-ДА 'ПРОПУСК' НЕ ИСП-СЯ
00 0000055 00 110 0000001	91		СЧЛ	1
	   00 000 0000476	92		ЗЧ	ЧИСПРП		;ЧИСЛО ПРОПУСКОВ = 1
00 0000056 00 010 0777777	93		СЧ	ФПАРТ		;ЕСЛИ 0 - ПАРАМЕТРЫ НЕ 
	   00 077 040 0005	94		УИ	5
00 0000057 00 050 0000106	95		УР	ТАЦП		;  ЗАДАНЫ
	   05 075 3777777	96		СА	-1,5
00 0000060 00 010 0777776	97		СЧ	ФНКАН		;ЕСЛИ 0 - НОМЕР У-КАНАЛА
	   00 050 0000063	98		УР	ДАЙНВУ		;  НЕ ЗАДАН
00 0000061 00 010 0777775	99		СЧ	НКАН
КАС2211 Файл ACP : Лист 3 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

	   00 111 0000003	100		ЛУЛ	3
00 0000062 00 077 040 0001	101		УИ	1		;НОМЕР У-КАНАЛА В И1
	   00 072 0000000
00 0000063 05 040 0000106	102	ДАЙНВУ	ИР	ТАЦП,5
	   05 075 3777777	103		СА	-1,5
00 0000064 00 010 0777774	104		СЧ	ФАЦПУ		;ЕСЛИ 0 - НОМЕР АЦПУ
	   00 050 0000072	105		УР	ДАЙРЖТ		;  НЕ ЗАДАН
00 0000065 00 010 0777773	106		СЧ	НАЦПУ
	   00 111 0000377	107		ЛУЛ	0377
00 0000066 00 000 0000473	108		ЗЧ	НВУ		;НОМЕР АЦПУ => НВУ
	   00 022 0000000	109		ВЧ
00 0000067 00 111 0000001	110		ЛУЛ	1
	   00 112 0000001	111		СРЛ	1
00 0000070 00 077 026 1770	112		СД	1024-8
	   00 015 0000473	113		ЛС	НВУ
00 0000071 00 000 0000473	114		ЗЧ	НВУ		;ДОПОЛНИМ НВУ ДО НЕЧЕТА
	   00 072 0000000
00 0000072 05 040 0000106	115	ДАЙРЖТ	ИР	ТАЦП,5
	   05 075 3777777	116		СА	-1,5
00 0000073 00 010 0777772	117		СЧ	ФРЕЖТ		;ЕСЛИ 0, РЕЖИМ НЕ ЗАДАН
	   00 050 0000076	118		УР	ДАЙПРП
00 0000074 00 010 0777771	119		СЧ	РЕЖТ
	   00 111 0000003	120		ЛУЛ	3
00 0000075 00 000 0000451	121		ЗЧ	РЕЖИМТ		;РЕЖИМ ПРОХОЖДЕНИЯ
	   00 072 0000000
00 0000076 05 040 0000106	122	ДАЙПРП	ИР	ТАЦП,5
	   05 075 3777777	123		СА	-1,5
00 0000077 00 010 0777770	124		СЧ	ФПРОП		;0 - НЕ ЗАДАН СПОСОБ
	   00 050 0000102	125		УР	ДАЙПР		;  ПРОПУСКА
00 0000100 00 010 0777767	126		СЧ	ПРОП
	   00 111 0000003	127		ЛУЛ	3
00 0000101 00 077 040 0003	128		УИ	3		;ТИП КОМАНДЫ ПРОПУСКА
	   03 041 0000106	129		ИН	ТАЦП,3		;ПЕРЕВОД КОМАНДОЙ 'ПРОПУСК'
00 0000102 05 040 0000106	130	ДАЙПР	ИР	ТАЦП,5
	   05 075 3777777	131		СА	-1,5
00 0000103 00 010 0777766	132		СЧ	ФЧИСП		;ЧИСЛО ПРОПУСКОВ НЕ ЗАДАНО
	   00 050 0000106	133		УР	ТАЦП
00 0000104 00 010 0777765	134		СЧ	ЧИСПР
	   00 111 0000003	135		ЛУЛ	3
00 0000105 00 000 0000476	136		ЗЧ	ЧИСПРП		;ВЫДЕЛИМ ЧИСЛО ПРОПУСКОВ
	   00 072 0000000
00 0000106 00 010 0000376	137	ТАЦП	СЧ	РАБК		;В ИНТЕРФЕЙС - РАБ-К
	   01 077 006 0070	138		ЗР	070,1
00 0000107 05 074 2000000	139		ПА	02000000,5
	   00 072 0000000
00 0000110 00 074 0000000	140	ОЖИД	ПА
	   05 033 0000110	141		КЦ	ОЖИД,5		;ЦИКЛ ЗАДЕРЖКИ
00 0000111 05 074 3777777	142		ПА	-1,5
	   00 072 0000000
00 0000112 05 010 0000435	143	ЗАП	СЧ	УАЦПУ-2,5
	   00 015 0000374	144		ЛС	МАСКНОМ
00 0000113 00 012 0000374	145		СР	МАСКНОМ
	   05 000 0000435	146		ЗЧ	УАЦПУ-2,5
00 0000114 00 010 0000473	147		СЧ	НВУ
	   00 077 026 1722	148		СД	1024-46
00 0000115 05 015 0000435	149		ЛС	УАЦПУ-2,5
	   05 000 0000435	150		ЗЧ	УАЦПУ-2,5	;НОМЕР ВУ В ДИАГРАММУ
00 0000116 05 033 0000112	151		КЦ	ЗАП,5
	   13 074 3777776	152		ПА	-2,11
00 0000117 13 010 0000437	153	ЗАПНВУ	СЧ	УАЦПУ,11
	   00 115 0000777	154		ЛСЛ	0777
00 0000120 00 112 0000777	155		СРЛ	0777
КАС2211 Файл ACP : Лист 4 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

	   00 015 0000473	156		ЛС	НВУ
00 0000121 13 000 0000437	157		ЗЧ	УАЦПУ,11
	   13 033 0000117	158		КЦ	ЗАПНВУ,11
				159	
				160	; ***************************************************************
				161	; *		    БЛОК ПРОВЕРКИ ИНТЕРФЕЙСА			*
				162	; *								*
				163	; *	    ВЫДАЕТСЯ СИМВОЛ 'ПУСТО' БЕЗ ПЕРЕВОДА СТРОКИ		*
				164	; ***************************************************************
00 0000122 07 074 0000000	165		ПА	,7
	   05 074 3777777	166		ПА	-1,5
00 0000123 05 010 0000426	167	ЦЗДАН1	СЧ	ИНФ+1,5
	   00 115 0000777	168		ЛСЛ	0777
00 0000124 00 112 0000777	169		СРЛ	0777
	   00 015 0000375	170		ЛС	БАЙТ0		;'ПУСТОЙ' СИМВОЛ В
00 0000125 05 000 0000426	171		ЗЧ	ИНФ+1,5		;  ДИАГРАММУ
	   05 033 0000123	172		КЦ	ЦЗДАН1,5
00 0000126 05 074 3777777	173		ПА	-1,5
	   00 072 0000000
00 0000127 05 010 0000433	174	ЦЗКОП1	СЧ	УАЦПУ-4,5
	   00 115 0000777	175		ЛСЛ	0777
00 0000130 00 112 0000777	176		СРЛ	0777
	   00 115 0000001	177		ЛСЛ	1
00 0000131 05 000 0000433	178		ЗЧ	УАЦПУ-4,5	;КОП - В ДИАГРАММУ
	   05 033 0000127	179		КЦ	ЦЗКОП1,5
00 0000132 12 074 3777757	180		ПА	-17,10		;ПОЛНЫЙ ЦИКЛ ИНТЕРФЕЙСА
	   17 074 0000440	181		ПА	УАЦПУ+1,15	;НА ОТРАБОТКУ
00 0000133 16 031 0000306	182		ПВ	ДИАГР,14	;  ВРЕМ.ДИАГРАММ
	   00 072 0000000
				183	
   0000134			184	ПРТАЦП
				185		.ВСТ:0	-A1-
00 0000134 00 010 0000451	186		СЧ	РЕЖИМТ		;ПРОВЕРКА НА БЛОКИРОВКУ
	   00 011 0000366	187		ЛУ	БПРТ
00 0000135 00 051 0000220	188		УН	КСТАЦП
	   00 110 0000001	189		СЧЛ	1		;ПЕЧАТЬ БЕЗ ПРОПУСКА
00 0000136 00 000 0000477	190		ЗЧ	КОП
	   03 041 0000141	191		ИН	ПРТАЦ,3		;1-Й ПЕРЕВОД К-ДОЙ 'ПРОПУСК'
00 0000137 00 010 0000476	192		СЧ	ЧИСПРП
	   00 077 026 1775	193		СД	1024-3
00 0000140 00 115 0000001	194		ЛСЛ	1
	   00 000 0000477	195		ЗЧ	КОП		;КОП + ЧИСЛО ПРОПУСКОВ
00 0000141 00 022 0000000	196	ПРТАЦ	ВЧ
	   00 111 0000001	197		ЛУЛ	1
00 0000142 00 112 0000001	198		СРЛ	1
	   00 077 026 1770	199		СД	1024-8
00 0000143 00 015 0000477	200		ЛС	КОП
	   00 000 0000477	201		ЗЧ	КОП		;ДОПОЛНИМ ДО НЕЧЕТА
00 0000144 05 074 3777777	202		ПА	-1,5
	   00 072 0000000
00 0000145 05 010 0000433	203	ЦЗКОП2	СЧ	УАЦПУ-4,5
	   00 115 0000777	204		ЛСЛ	0777
00 0000146 00 112 0000777	205		СРЛ	0777
	   00 015 0000477	206		ЛС	КОП
00 0000147 05 000 0000433	207		ЗЧ	УАЦПУ-4,5	;КОП - В ДИАГРАММУ
	   05 033 0000145	208		КЦ	ЦЗКОП2,5
00 0000150 15 074 3777655	209		ПА	-83,13		;ПЕЧАТАЕМ 84 СТРОК
	   02 074 0000403	210		ПА	ТДКОИ,2		;НАЧАЛО ВЫДАВАЕМОГО МАССИВА
00 0000151 10 074 0000100	211		ПА	64,8		;НАЧАЛЬНЫЙ СДВИГ
	   00 072 0000000
00 0000152 17 074 0000440	212	ПЕЧПРТ	ПА	УАЦПУ+1,15
	   12 074 3777771	213		ПА	-7,10
КАС2211 Файл ACP : Лист 5 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

00 0000153 16 031 0000306	214		ПВ	ДИАГР,14	;НАЧАЛЬНАЯ ВЫБОРКА
	   00 072 0000000
00 0000154 10 041 0000156	215	ВОЗВР	ИН	ДАЙСИМ,8	;ПРОВЕРКА НА КОНЕЦ СЛОВА
	   02 075 0000001	216		СА	1,2
00 0000155 10 074 0000100	217		ПА	64,8		;ОЧЕРЕДНОЕ СЛОВО
	   00 072 0000000
00 0000156 10 075 3777770	218	ДАЙСИМ	СА	-8,8		;КОРРЕКТИРОВКА СДВИГА
	   02 010 0000000	219		СЧ	,2
00 0000157 10 077 026 2000	220		СД	1024,8
	   00 111 0000377	221		ЛУЛ	0377
00 0000160 00 000 0000474	222		ЗЧ	СИМВОЛ		;ВЫДЕЛИМ СИМВОЛ
	   00 022 0000000	223		ВЧ
00 0000161 00 111 0000001	224		ЛУЛ	1
	   00 112 0000001	225		СРЛ	1
00 0000162 00 077 026 1770	226		СД	1024-8
	   00 015 0000474	227		ЛС	СИМВОЛ
00 0000163 00 000 0000474	228		ЗЧ	СИМВОЛ		;ДОПОЛНИМ СИМВОЛ ДО НЕЧЕТА
	   05 074 3777777	229		ПА	-1,5
00 0000164 05 010 0000426	230	ЦЗДАН2	СЧ	ИНФ+1,5
	   00 115 0000777	231		ЛСЛ	0777
00 0000165 00 112 0000777	232		СРЛ	0777
	   00 015 0000474	233		ЛС	СИМВОЛ
00 0000166 05 000 0000426	234		ЗЧ	ИНФ+1,5		;СИМВОЛ В ДИАГРАММУ
	   05 033 0000164	235		КЦ	ЦЗДАН2,5
00 0000167 13 074 3777575	236		ПА	-131,11		;СИМВОЛ ПЕЧАТАЕМ 132 РАЗ
	   00 072 0000000
00 0000170 17 074 0000430	237	ПЕЧСИМ	ПА	ИНФ+3,15
	   12 074 3777776	238		ПА	-2,10
00 0000171 16 031 0000306	239		ПВ	ДИАГР,14	;ПЕЧАТАЕМ СИМВОЛ
	   00 072 0000000
00 0000172 13 033 0000170	240	ЦПЕЧ	КЦ	ПЕЧСИМ,11	;ЦИКЛ ПЕЧАТИ СИМВОЛА
	   17 074 0000423	241		ПА	ИНФ-2,15
00 0000173 12 074 3777774	242		ПА	-4,10
	   16 031 0000306	243		ПВ	ДИАГР,14	;ПЕЧАТЬ СТРОКИ
00 0000174 03 040 0000217	244	НЕТПР	ИР	ЦПРТ,3		;И7=0 - ПРОПУСК ВЫПОЛНЕН
				245	
				246	; ***************************************************************
				247	; *		ПЕРЕВОД СТРОК КОМАНДОЙ 'ПРОПУСК'		*
				248	; ***************************************************************
	   00 010 0000476	249		СЧ	ЧИСПРП
00 0000175 00 113 0000001	250		ЦСЛ	1
	   00 111 0000003	251		ЛУЛ	3
00 0000176 00 000 0000476	252		ЗЧ	ЧИСПРП		;ЧИСЛО ПРОПУСКОВ
	   00 077 026 1775	253		СД	1024-3
00 0000177 00 115 0000003	254		ЛСЛ	3
	   00 000 0000500	255		ЗЧ	КОППР		;КОП + ЧИСЛО ПРОПУСКОВ
00 0000200 00 022 0000000	256		ВЧ
	   00 111 0000001	257		ЛУЛ	1
00 0000201 00 112 0000001	258		СРЛ	1
	   00 077 026 1770	259		СД	1024-8
00 0000202 00 015 0000500	260		ЛС	КОППР
	   00 000 0000500	261		ЗЧ	КОППР		;ДОПОЛНИМ ДО НЕЧЕТА
00 0000203 05 074 3777777	262		ПА	-1,5
	   00 072 0000000
00 0000204 05 010 0000433	263	ЦЗКОП3	СЧ	УАЦПУ-4,5
	   00 115 0000777	264		ЛСЛ	0777
00 0000205 00 112 0000777	265		СРЛ	0777
	   00 015 0000500	266		ЛС	КОППР
00 0000206 05 000 0000433	267		ЗЧ	УАЦПУ-4,5	;КОП - В ДИАГРАММУ
	   05 033 0000204	268		КЦ	ЦЗКОП3,5
00 0000207 17 074 0000440	269		ПА	УАЦПУ+1,15
	   12 074 3777773	270		ПА	-5,10
КАС2211 Файл ACP : Лист 6 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

00 0000210 16 031 0000306	271		ПВ	ДИАГР,14	;НАЧАЛЬНАЯ ВЫБОРКА
	   00 072 0000000
00 0000211 17 074 0000423	272	ЗАВОПП	ПА	ИНФ-2,15
	   12 074 3777774	273		ПА	-4,10
00 0000212 16 031 0000306	274		ПВ	ДИАГР,14	;ЗАВЕРШЕНИЕ ОПЕРАЦИИ
	   00 072 0000000
00 0000213 05 074 3777777	275	ВОСКОП	ПА	-1,5
	   00 072 0000000
00 0000214 05 010 0000433	276	ЦЗКОП4	СЧ	УАЦПУ-4,5
	   00 115 0000777	277		ЛСЛ	0777
00 0000215 00 112 0000777	278		СРЛ	0777
	   00 015 0000477	279		ЛС	КОП
00 0000216 05 000 0000433	280		ЗЧ	УАЦПУ-4,5	;КОП - В ДИАГРАММУ
	   05 033 0000214	281		КЦ	ЦЗКОП4,5
00 0000217 15 033 0000152	282	ЦПРТ	КЦ	ПЕЧПРТ,13	;ЦИКЛ 'ПРЯМОГО' ТЕСТА
				283	
	   00 072 0000000
   0000220			284	КСТАЦП
				285		.ВСТ:0	-A2-
00 0000220 00 010 0000451	286		СЧ	РЕЖИМТ		;ПРОВЕРКА НА БЛОКИРОВКУ
	   00 011 0000367	287		ЛУ	БКСТ
00 0000221 00 051 0000270	288		УН	ВЫХТАЦП
	   05 074 3777777	289		ПА	-1,5
00 0000222 05 010 0000433	290	ЦЗКОП5	СЧ	УАЦПУ-4,5
	   00 115 0000777	291		ЛСЛ	0777
00 0000223 00 112 0000777	292		СРЛ	0777
	   00 015 0000371	293		ЛС	ПРП1
00 0000224 05 000 0000433	294		ЗЧ	УАЦПУ-4,5	;КОП - В ДИАГРАММУ
	   05 033 0000222	295		КЦ	ЦЗКОП5,5
00 0000225 15 074 3777575	296		ПА	-131,13		;ПЕЧАТАЕМ 132 СТРОК
	   11 074 3777766	297		ПА	-012,9		;ДЛЯ ЦИКЛА ПЕРЕПИСИ
				298	
				299	; ***************************************************************
				300	; *	      ПЕРВОНАЧАЛЬНАЯ РОСПИСЬ МАССИВА БУФАЦП		*
				301	; *		84 СИМВОЛОВ ДКОИ + 48 ПРОБЕЛОВ			*
				302	; ***************************************************************
00 0000226 11 010 0000415	303	РОСПБ	СЧ	ТДКОИ+012,9	;ПЕРЕПИСЬ
	   11 000 0000464	304		ЗЧ	БУФАЦП+012,9	;  СИМВОЛОВ ДКОИ
00 0000227 11 033 0000226	305		КЦ	РОСПБ,9
	   00 010 0000370	306		СЧ	ПРОБ8
00 0000230 11 074 3777773	307		ПА	-5,9
	   00 072 0000000
00 0000231 11 000 0000472	308	РОСПРОБ ЗЧ	БУФАЦП+16,9
	   11 033 0000231	309		КЦ	РОСПРОБ,9	;РОСПИСЬ ПРОБЕЛАМИ
00 0000232 00 030 0000244	310		ПБ	ПЕЧАТЬ		;ПЕРЕХОД НА ПЕЧАТЬ
				311	
				312	; ***************************************************************
				313	; *		ПРЕОБРАЗОВАНИЕ МАССИВА 'КОСЫМ' ТЕСТОМ		*
				314	; ***************************************************************
	   00 072 0000000
00 0000233 11 074 3777761	315	КОСОЙТ	ПА	-15,9		;ДЛЯ ЦИКЛА 'СКАШИВАНИЯ'
	   00 010 0000452	316		СЧ	БУФАЦП
00 0000234 00 077 026 1770	317		СД	1024-8
	   00 000 0000452	318		ЗЧ	БУФАЦП
00 0000235 00 077 031 0000	319		МР			;1-Й СИМВОЛ 1-ГО СЛОВА
	   00 000 0000474	320		ЗЧ	СИМВОЛ		;1-Й СИМВОЛ СТАНЕТ 132-М
00 0000236 11 010 0000472	321	КСТЕСТ	СЧ	БУФАЦП+16,9
	   00 077 026 1770	322		СД	1024-8
00 0000237 11 000 0000472	323		ЗЧ	БУФАЦП+16,9
	   00 077 031 0000	324		МР
00 0000240 11 015 0000471	325		ЛС	БУФАЦП+15,9	;1-Й СИМВОЛ ОЧЕРЕДНОГО СЛОВА
	   11 000 0000471	326		ЗЧ	БУФАЦП+15,9	;ДОБАВИМ В ПРЕДЫДУЩЕЕ
КАС2211 Файл ACP : Лист 7 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

00 0000241 11 033 0000236	327		КЦ	КСТЕСТ,9	;ЦИКЛ 'СКАШИВАНИЯ'
	   00 010 0000474	328		СЧ	СИМВОЛ
00 0000242 00 077 026 1740	329		СД	1024-32
	   00 015 0000472	330		ЛС	БУФАЦП+16
00 0000243 00 000 0000472	331		ЗЧ	БУФАЦП+16	;ФОРМИРУЕМ ПОСЛЕДНЕЕ СЛОВО
	   00 072 0000000
00 0000244 17 074 0000440	332	ПЕЧАТЬ	ПА	УАЦПУ+1,15
	   12 074 3777771	333		ПА	-7,10
00 0000245 16 031 0000306	334		ПВ	ДИАГР,14	;НАЧАЛЬНАЯ ВЫБОРКА
	   00 072 0000000
00 0000246 13 074 3777575	335	ЧИССИМ	ПА	-131,11		;ЧИСЛО СИМВОЛОВ В СТРОКЕ
	   10 074 0000100	336		ПА	64,8		;СДВИГ В СЛОВЕ
00 0000247 02 074 0000452	337		ПА	БУФАЦП,2	;НАЧАЛО МАССИВА ВЫДАЧИ
	   00 072 0000000
00 0000250 10 041 0000252	338	ОЧСИМВ	ИН	ОЧСИ,8		;СЛОВО НЕ ИСЧЕРПАЛИ
	   10 074 0000100	339		ПА	64,8		;ПЕРЕХОД К
00 0000251 02 075 0000001	340		СА	1,2		;   ОЧЕРЕДНОМУ СЛОВУ
	   00 072 0000000
00 0000252 10 075 3777770	341	ОЧСИ	СА	-8,8		;КОРРЕКТИРОВКА СДВИГА
	   02 010 0000000	342		СЧ	,2
00 0000253 10 077 026 2000	343		СД	1024,8
	   00 111 0000377	344		ЛУЛ	0377
00 0000254 00 000 0000474	345		ЗЧ	СИМВОЛ		;СИМВОЛ ДЛЯ ПЕЧАТИ
	   00 022 0000000	346		ВЧ
00 0000255 00 111 0000001	347		ЛУЛ	1
	   00 112 0000001	348		СРЛ	1
00 0000256 00 077 026 1770	349		СД	1024-8
	   00 015 0000474	350		ЛС	СИМВОЛ
00 0000257 00 000 0000474	351		ЗЧ	СИМВОЛ		;ДОПОЛНИМ ДО НЕЧЕТА
	   05 074 3777777	352		ПА	-1,5
00 0000260 05 010 0000426	353	ЦЗДАН3	СЧ	ИНФ+1,5
	   00 115 0000777	354		ЛСЛ	0777
00 0000261 00 112 0000777	355		СРЛ	0777
	   00 015 0000474	356		ЛС	СИМВОЛ
00 0000262 05 000 0000426	357		ЗЧ	ИНФ+1,5		;СИМВОЛ В ДИАГРАММУ
	   05 033 0000260	358		КЦ	ЦЗДАН3,5
00 0000263 17 074 0000430	359		ПА	ИНФ+3,15
	   12 074 3777776	360		ПА	-2,10
00 0000264 16 031 0000306	361		ПВ	ДИАГР,14	;ПЕЧАТЬ СИМВОЛА
	   00 072 0000000
00 0000265 13 033 0000250	362	ЦПСТР	КЦ	ОЧСИМВ,11	;ЦИКЛ ПЕЧАТИ СТРОКИ
	   17 074 0000423	363		ПА	ИНФ-2,15
00 0000266 12 074 3777774	364		ПА	-4,10
	   16 031 0000306	365		ПВ	ДИАГР,14	;ПЕЧАТЬ СТРОКИ
00 0000267 15 033 0000233	366	ЦКОС	КЦ	КОСОЙТ,13	;ЦИКЛ ПЕЧАТИ
				367	
	   00 072 0000000
00 0000270 05 074 3777777	368	ВЫХТАЦП ПА	-1,5
	   00 072 0000000
00 0000271 05 010 0000426	369	ЦЗДАН4	СЧ	ИНФ+1,5
	   00 115 0000777	370		ЛСЛ	0777
00 0000272 00 112 0000777	371		СРЛ	0777
	   05 000 0000426	372		ЗЧ	ИНФ+1,5		;ОБНУЛИМ РАЗРЯДЫ СИМВОЛА
00 0000273 05 033 0000271	373		КЦ	ЦЗДАН4,5
	   13 074 3777776	374		ПА	-2,11
00 0000274 13 010 0000437	375	ГАШНВУ	СЧ	УАЦПУ,11
	   00 115 0000777	376		ЛСЛ	0777
00 0000275 00 112 0000777	377		СРЛ	0777
	   13 000 0000437	378		ЗЧ	УАЦПУ,11
00 0000276 13 033 0000274	379		КЦ	ГАШНВУ,11
	   05 074 3777777	380		ПА	-1,5
00 0000277 05 010 0000435	381	ГАШУ	СЧ	УАЦПУ-2,5
КАС2211 Файл ACP : Лист 8 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

	   00 015 0000374	382		ЛС	МАСКНОМ
00 0000300 00 012 0000374	383		СР	МАСКНОМ
	   05 000 0000435	384		ЗЧ	УАЦПУ-2,5	;ОБНУЛИМ РАЗРЯДЫ НВУ	
00 0000301 05 033 0000277	385		КЦ	ГАШУ,5
	   05 074 3777777	386		ПА	-1,5
00 0000302 05 010 0000433	387	ОЧКОП	СЧ	УАЦПУ-4,5
	   00 115 0000777	388		ЛСЛ	0777
00 0000303 00 112 0000777	389		СРЛ	0777
	   05 000 0000433	390		ЗЧ	УАЦПУ-4,5	;ОБНУЛИМ РАЗРЯДЫ КОП
00 0000304 05 033 0000302	391		КЦ	ОЧКОП,5
	   00 110 0000000	392		СЧЛ	0
00 0000305 01 077 006 0070	393		ЗР	070,1		;ОБНУЛЕНИЕ КАНАЛА
	   00 030 0000040	394		ПБ	СТП
				395	
   0000306			396	ДИАГР
				397	; ***************************************************************
				398	; *								*
				399	; *		П/П ОТРАБОТКИ ВРЕМЕННОЙ ДИАГРАММЫ		*
				400	; *								*
				401	; *		ПРИ ВХОДЕ:					*
				402	; *	И15 - НАЧАЛЬНЫЙ АДРЕС ВРЕМЕННОЙ ДИАГРАММЫ + 1		*
				403	; *	И10 - ЧИСЛО ОТРАБАТЫВАЕМЫХ СЛОВ				*
				404	; *	И14 - АДРЕС ВОЗВРАТА					*
				405	; *	И7  - ПРИЗНАК ЗАПИСИ/ЧТЕНИЯ (0/1)			*
				406	; *								*
				407	; *		ИСПОЛЬЗУЕМЫЕ РЕГИСТРЫ:				*
				408	; *	И12 - ПАРАМЕТР ЦИКЛА ВЫДЕРЖКИ ВРЕМЕНИ			*
				409	; ***************************************************************
00 0000306 17 010 0000000	410		СЧ	,15
	   01 077 006 0070	411		ЗР	070,1		;СИГНАЛЫ КАНАЛА
00 0000307 00 012 0000372	412		СР	Е1П18
	   00 011 0000372	413		ЛУ	Е1П18
00 0000310 00 000 0000475	414		ЗЧ	ОТВЕТ		;ИНВЕРСИЯ ВЫДАЧИ В КАНАЛ
	   01 077 002 0074	415		ЧР	074,1		;КОНТРОЛЬНОЕ ЧТЕНИЕ
00 0000311 00 012 0000475	416		СР	ОТВЕТ		;СРАВНИМ С ЗАПИСАННЫМ
	   00 050 0000313	417		УР	ДИАГ
				418	; ***************************************************************
				419	; *			    СТОП 100				*
				420	; *		ИСКАЖЕНО СОДЕРЖИМОЕ ВЫХОДНОГО РЕГИСТРА		*
				421	; * ИНДИКАЦИЯ:							*
				422	; *   СМ - КОД НЕСРАВНЕНИЯ					*
				423	; * ОСТАНОВ НЕ ПРОТАЛКИВАЕТСЯ					*
				424	; ***************************************************************
00 0000312 00 077 007 0100	425	СТП100	ОСТ	0100
	   00 030 0000312	426		ПБ	СТП100
				427	
00 0000313 17 075 0000001	428	ДИАГ	СА	1,15
	   17 010 0000000	429		СЧ	,15
00 0000314 00 021 0000372	430		РБ	Е1П18
	   00 000 0000475	431		ЗЧ	ОТВЕТ		;ОЖИДАЕМЫЕ СИГНАЛЫ ВУ
00 0000315 00 012 0000372	432		СР	Е1П18
	   00 051 0000317	433		УН	ЖДУОТВ
00 0000316 12 033 0000306	434	ЦДИАГР	КЦ	ДИАГР,10	;ПРОДОЛЖИМ ДИАГРАММУ
	   16 030 0000000	435		ПБ	,14
00 0000317 00 072 0077000	436	ЖДУОТВ	ПФ	077000
	   14 074 0000000	437		ПА	,12
00 0000320 01 077 002 0070	438	ЖДУ	ЧР	070,1		;СИГНАЛЫ ОТ ВУ
	   00 000 0000501	439		ЗЧ	СИГНАЛЫ
00 0000321 07 011 0000372	440		ЛУ	Е1П18,7
	   00 012 0000475	441		СР	ОТВЕТ		;СРАВНИМ С ОЖИДАЕМЫМИ
00 0000322 00 050 0000316	442		УР	ЦДИАГР
	   00 010 0000501	443		СЧ	СИГНАЛЫ
КАС2211 Файл ACP : Лист 9 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

00 0000323 00 011 0000401	444		ЛУ	КАНВУК
	   00 012 0000401	445		СР	КАНВУК
00 0000324 00 050 0000336	446		УР	СРАВ		;ПРИШЛИ ВУК И КК
	   00 010 0000501	447		СЧ	СИГНАЛЫ
00 0000325 00 011 0000377	448		ЛУ	ВБРА
	   00 012 0000377	449		СР	ВБРА
00 0000326 00 050 0000340	450		УР	ВБРАБ		;НЕ НАЙДЕН АЦД
	   00 010 0000501	451		СЧ	СИГНАЛЫ
00 0000327 00 011 0000400	452		ЛУ	СБВУ
	   00 012 0000400	453		СР	СБВУ
00 0000330 00 050 0000342	454		УР	СБОЙ		;СБОЙ В УСТРОЙСТВЕ
	   14 033 0000334	455		КЦ	ЦОЖД,12		;ПРОДОЛЖАЕМ ЖДАТЬ
				456	; ***************************************************************
				457	; *			СТОП 200				*
				458	; *		НЕТ ОЖИДАЕМЫХ СИГНАЛОВ ВУ			*
				459	; * ИНДИКАЦИЯ:							*
				460	; *		ВР  - ОЖИДАЕМЫЕ СИГНАЛЫ ВУ			*
				461	; *		РМР - ПРИШЕДШИЕ СИГНАЛЫ				*
				462	; *		СМ  - КОД НЕСРАВНЕНИЯ				*
				463	; ***************************************************************
00 0000331 00 010 0000473	464		СЧ	НВУ
	   00 077 040 0005	465		УИ	5
00 0000332 00 010 0000501	466		СЧ	СИГНАЛЫ
	   00 012 0000475	467		СР	ОТВЕТ
00 0000333 00 077 007 0200	468	СТП200	ОСТ	0200
	   00 030 0000333	469		ПБ	СТП200
				470	
00 0000334 00 073 0000000	471	ЦОЖД	ИК
	   00 041 0000000	472		ИН
00 0000335 00 030 0000320	473		ПБ	ЖДУ		;ВЫДЕРЖКА ВРЕМЕНИ
				474	
	   00 072 0000000
00 0000336 17 074 0000420	475	СРАВ	ПА	КОБМ,15
	   12 074 3777777	476		ПА	-1,10
00 0000337 00 030 0000306	477		ПБ	ДИАГР
				478	
	   00 072 0000000
00 0000340 00 010 0000473	479	ВБРАБ	СЧ	НВУ
				480	; ***************************************************************
				481	; *			СТОП 201				*
				482	; *		  НЕСУЩЕСТВУЮЩЕЕ ИМЯ АЦПУ			*
				483	; *	ИНДИКАЦИЯ:						*
				484	; *		  СМ - НЕУЗНАННЫЙ НОМЕР ВУ			*
				485	; ***************************************************************
	   00 077 007 0201	486		ОСТ	129
00 0000341 00 030 0000340	487		ПБ	ВБРАБ
				488	
	   00 072 0000000
00 0000342 00 077 042 0016	489	СБОЙ	ВИ	14
	   00 000 0000502	490		ЗЧ	ОБЛСОХР
00 0000343 07 074 0000000	491		ПА	,7
	   12 074 3777777	492		ПА	-1,10
00 0000344 17 074 0000420	493		ПА	КОБМ,15
	   16 031 0000306	494		ПВ	ДИАГР,14
00 0000345 05 074 3777777	495	ОКОП	ПА	-1,5
	   00 072 0000000
00 0000346 05 010 0000433	496	ЦЗКОП10 СЧ	УАЦПУ-4,5
	   00 115 0000777	497		ЛСЛ	0777
00 0000347 00 112 0000777	498		СРЛ	0777
	   00 015 0000402	499		ЛС	УТЧН
00 0000350 05 000 0000433	500		ЗЧ	УАЦПУ-4,5	;КОП УТЧН - В ДИАГРАММУ
	   05 033 0000346	501		КЦ	ЦЗКОП10,5
КАС2211 Файл ACP : Лист 10 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

00 0000351 12 074 3777772	502		ПА	-6,10
	   17 074 0000440	503		ПА	УАЦПУ+1,15
00 0000352 07 074 0000000	504		ПА	,7
	   16 031 0000306	505		ПВ	ДИАГР,14
00 0000353 07 074 0000001	506	НАЧВ	ПА	1,7		;ДЛЯ ЧТЕНИЯ БАЙТА СОСТОЯНИЯ
	   12 074 3777776	507		ПА	-2,10
00 0000354 17 074 0000447	508		ПА	УТОЧ+1,15
	   16 031 0000306	509		ПВ	ДИАГР,14	;ЗА Б. УТОЧНЕННОГО СОСТОЯНИЯ
00 0000355 00 010 0000501	510	БСОСТ	СЧ	СИГНАЛЫ
	   00 000 0000503	511		ЗЧ	СОСТ
00 0000356 07 074 0000000	512		ПА	,7
	   16 074 0000444	513		ПА	КЧТ+1,14
00 0000357 12 074 3777775	514		ПА	-3,10
	   16 031 0000306	515		ПВ	ДИАГР,14	;ЗАВЕРШЕНИЕ ОБМЕНА
00 0000360 00 010 0000502	516	АДРВОЗ	СЧ	ОБЛСОХР
	   00 077 040 0016	517		УИ	14
				518	; ***************************************************************
				519	; *			  СТОП 300				*
				520	; *		ВЫДАЧА БАЙТА УТОЧНЕННОГО СОСТОЯНИЯ		*
				521	; * ИНДИКАЦИЯ:							*
				522	; *	      И5  - НОМЕР ВУ					*
				523	; *	      СМ  - БАЙТ УТОЧНЕННОГО СОСТОЯНИЯ			*
				524	; ***************************************************************
00 0000361 00 010 0000473	525		СЧ	НВУ
	   00 077 040 0005	526		УИ	5
00 0000362 00 010 0000503	527		СЧ	СОСТ
	   00 111 0000377	528		ЛУЛ	0377
00 0000363 05 077 007 0300	529	СТП300	ОСТ	192,5
	   00 030 0000363	530		ПБ	СТП300
				531	
				532	; ***************************************************************
				533	; *		    КОНСТАНТЫ И ДАННЫЕ ТЕСТА			*
				534	; ***************************************************************
00 0000364 000 000 000 000	535	СТАЦП	0777		;НОМЕР АЦПУ='0377'
	   000 000 001 377
00 0000365 000 000 000 000	536	ТТ	1<12		;ПРИЗНАК ТТ В ИС1
	   000 000 020 000
00 0000366 000 000 000 000	537	БПРТ	2		;БЛОКИРОВКА 'ПРЯМОГО' ТЕСТА
	   000 000 000 002
00 0000367 000 000 000 000	538	БКСТ	1		;БЛОКИРОВКА 'КОСОГО' ТЕСТА
	   000 000 000 001
00 0000370 100 100 100 100	539	ПРОБ8	.0100.0100.0100.0100.0100.0100.0100.0100 ;8 ПРОБ.
	   100 100 100 100
00 0000371 000 000 000 000	540	ПРП1	0411		;ПИСАТЬ С ПРОПУСКОМ 1-Й СТР.
	   000 000 001 011
00 0000372 000 000 000 000	541	Е1П18	0777777		;МАСКИ СИГНАЛОВ АБОНЕНТА
	   000 003 377 377
00 0000373 000 000 000 000	542		0777000
	   000 003 376 000
00 0000374 000 177 300 000	543	МАСКНОМ 0777<46		;МАСКА НОМЕРА ВУ
	   000 000 000 000
00 0000375 000 000 000 000	544	БАЙТ0	0400		;НУЛЕВОЙ БАЙТ С ЧЕТНОСТЬЮ
	   000 000 001 000
00 0000376 000 000 000 000	545	РАБК	1<13		;СИГНАЛ РАБ-К
	   000 000 040 000
00 0000377 000 000 000 000	546	ВБРА	1<14		;СИГНАЛ ВБР-А
	   000 000 100 000
00 0000400 000 000 000 000	547	СБВУ	1<10!2		;СИГНАЛЫ УПР-А И СБУ
	   000 000 004 002
00 0000401 000 000 000 000	548	КАНВУК	02414		;УПР-А,КОНТР.Р.,КК,ВУК
	   000 000 005 014
				549	
КАС2211 Файл ACP : Лист 11 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

00 0000402 000 000 000 000	550	УТЧН	4		;УТОЧНИТЬ СОСТОЯНИЕ(04)
	   000 000 000 004
				551	
				552	; ***************************************************************
				553	; *		    ТАБЛИЦА КОДИРОВКИ ДКОИ			*
				554	; ***************************************************************
				555	
00 0000403 301 302 303 304	556	ТДКОИ	.0301.0302.0303.0304.0305.0306.0307.0310
	   305 306 307 310
00 0000404 311 321 322 323	557		.0311.0321.0322.0323.0324.0325.0326.0327
	   324 325 326 327
00 0000405 330 331 342 343	558		.0330.0331.0342.0343.0344.0345.0346.0347
	   344 345 346 347
00 0000406 350 351 272 277	559		.0350.0351.0272.0277.0274.0354.0372.0313
	   274 354 372 313
00 0000407 314 316 334 353	560		.0314.0316.0334.0353.0276.0273.0376.0373
	   276 273 376 373
00 0000410 375 356 357 374	561		.0375.0356.0357.0374.0270.0335.0100.0120
	   270 335 100 120
00 0000411 140 141 112 132	562		.0140.0141.0112.0132.0152.0172.0113.0133
	   152 172 113 133
00 0000412 153 173 114 134	563		.0153.0173.0114.0134.0154.0174.0115.0135
	   154 174 115 135
00 0000413 155 175 116 136	564		.0155.0175.0116.0136.0156.0176.0117.0137
	   156 176 117 137
00 0000414 157 177 360 361	565		.0157.0177.0360.0361.0362.0363.0364.0365
	   362 363 364 365
00 0000415 366 367 370 371	566		.0366.0367.0370.0371.0100.0100.0100.0100
	   100 100 100 100
				567	
				568	; ***************************************************************
				569	; *		ВРЕМЕННАЯ ДИАГРАММА РАБОТЫ ВУ			*
				570	; ***************************************************************
				571	;		  ЗАВЕРШЕНИЕ ОБМЕНА
00 0000416 377 377 300 000	572		0777777<33!1<13 ;РАБ-К
	   000 000 040 000
00 0000417 000 000 000 000	573		5<11		;0;РАБ-К,ИНФ-К
	   000 000 050 000
00 0000420 011 001 000 000	574	КОБМ	011<8!1<35!7<13 ;РАБ-А,УПР-А,ВУК;РВБ-К,ВБРК,РАБК
	   000 000 340 000
00 0000421 010 000 000 000	575		1<48!035<11	;РАБ-А;РВБ-К,ВБР-К,РАБ-К,ИНФ-К
	   000 000 350 000
00 0000422 011 002 000 000	576		011<7!1<36!7<13 ;РАБ-А,УПР-А,КК;РВБ-К,ВБР-К,РАБК
	   000 000 340 000
00 0000423 010 000 000 000	577		1<49!071<10	;РАБ-А;РВБ-К,ВБР-К,РАБ-К,УПР-К
	   000 000 344 000
00 0000424 012 000 000 000	578		5<44!7<13	;РАБ-А,ИНФ-А;РВБ-К,ВБР-К,РАБ-К
	   000 000 340 000
				579	;		  ЗАПИСЬ БАЙТА
00 0000425 010 000 000 000	580	ИНФ	1<48!035<11	;РАБ-А;РВБ-К,ВБР-К,РАБ-К,ИНФ-К,
	   000 000 350 000
				581	;					БАЙТ ДАННЫХ
00 0000426 377 377 300 000	582		0777777<33!7<13 ;РВБ-К,ВБР-К,РАБ-К,БАЙТ ДАННЫХ
	   000 000 340 000
00 0000427 012 000 000 000	583		5<44!7<13	;РАБ-А,ИНФ-А;РВБ-К,ВБР-К,РАБ-К
	   000 000 340 000
				584	;		  НАЧАЛЬНАЯ ВЫБОРКА
00 0000430 010 000 000 000	585		1<48!035<11	;РАБ-А;РВБ-К,ВБР-К,РАБ-К,ИНФ-К
	   000 000 350 000
00 0000431 011 100 000 000	586		045<41!7<13	;РАБ-А,УПР-А,0-Й БАЙТ СОСТОЯНИЯ;
	   000 000 340 000
				587	;					РВБ-К,ВБР-К,РАБ-К
КАС2211 Файл ACP : Лист 12 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

00 0000432 010 000 000 000	588		1<49!071<10	;РАБ-А;РВБ-К,ВБР-К,РАБК,УПРК,КОП
	   000 000 344 000
00 0000433 377 377 300 000	589		0777777<33!7<13 ;РВБ-К,ВБР-К,РАБ-К,КОП
	   000 000 340 000
00 0000434 010 200 000 000	590		021<42!7<13	;РАБ-А,АДР-А,НВУ;РВБ-К,ВБРК,РАБК
	   000 000 340 000
00 0000435 010 000 000 000	591		1<50!0161<9	;РАБА,НВУ;РВБК,ВБР,РАБК,АДРК,НВУ
	   000 000 342 000
00 0000436 377 377 300 000	592		0777777<37!021<9;РАБ-К,АДР-К,НВУ
	   000 000 042 000
00 0000437 377 377 300 000	593	УАЦПУ	0777777<33!1<13 ;РАБ-К,НВУ
	   000 000 040 000
				594	
				595	; ***************************************************************
				596	; *	  ДИАГРАММА ВЫБОРКИ БАЙТА УТОЧНЕННОГО СОСТОЯНИЯ		*
				597	; ***************************************************************
				598	;	     ЗАВЕРШЕНИЕ ОБМЕНА
00 0000440 377 377 300 000	599		0777777<33!1<13 ;РАБ-К
	   000 000 040 000
00 0000441 000 000 000 000	600		5<11		;0;РАБ-К,ИНФ-К
	   000 000 050 000
00 0000442 011 103 000 000	601		045<6!3<35!7<13 ;РАБА,УПРА,КК,ВУК;РВБК,ВБРК,РАБК
	   000 000 340 000
00 0000443 010 000 000 000	602	КЧТ	1<48!035<11	;РАБ-А;РВБ-К,ВБР-К,РАБ-К,ИНФ-К	
	   000 000 350 000
				603	;	     ЧТЕНИЕ БАЙТА СОСТОЯНИЯ
00 0000444 012 000 000 000	604		5<44!7<13	;РАБА,ИНФА,Б.СОСТ.;РВБК,ВБРК,РАБК
	   000 000 340 000
00 0000445 012 000 000 000	605		5<44!7<13	;РАБ-А,ИНФ-А;РВБ-К,ВБР-К,РАБ-К
	   000 000 340 000
00 0000446 010 000 000 000	606	УТОЧ	1<48!035<11	;РАБ-А;РВБ-К,ВБР-К,РАБ-К,ИНФ-К
	   000 000 350 000
				607	
00 0000447 000 000 000 000	608	КСУМТ	0		;КОНТР. СУММА ТЕСТА
	   000 000 000 000
				609	
				610	; ***************************************************************
				611	; *			РАБОЧИЕ ЯЧЕЙКИ ТЕСТА			*
				612	; ***************************************************************
				613	
00 0000450 0 0 0 0 0 0 0 0	614	ЯЧКС	.ПАМ	1		;РАБОЧАЯ ЯЧЕЙКА КОНТР. СУММ-Я
00 0000451 0 0 0 0 0 0 0 0	615	РЕЖИМТ	.ПАМ	1		;РЕЖИМ РАБОТЫ ТЕСТА
00 0000452 0 0 0 0 0 0 0 0	616	БУФАЦП	.ПАМ	021		;БУФЕР НА 128 СИМВОЛОВ
00 0000453 0 0 0 0 0 0 0 0
00 0000454 0 0 0 0 0 0 0 0
00 0000455 0 0 0 0 0 0 0 0
00 0000456 0 0 0 0 0 0 0 0
00 0000457 0 0 0 0 0 0 0 0
00 0000460 0 0 0 0 0 0 0 0
00 0000461 0 0 0 0 0 0 0 0
00 0000462 0 0 0 0 0 0 0 0
00 0000463 0 0 0 0 0 0 0 0
00 0000464 0 0 0 0 0 0 0 0
00 0000465 0 0 0 0 0 0 0 0
00 0000466 0 0 0 0 0 0 0 0
00 0000467 0 0 0 0 0 0 0 0
00 0000470 0 0 0 0 0 0 0 0
00 0000471 0 0 0 0 0 0 0 0
00 0000472 0 0 0 0 0 0 0 0
00 0000473 0 0 0 0 0 0 0 0	617	НВУ	.ПАМ	1		;НОМЕР АЦПУ
00 0000474 0 0 0 0 0 0 0 0	618	СИМВОЛ	.ПАМ	1		;ХРАНЕНИЕ ОЧЕРЕДНОГО СИМВОЛА
00 0000475 0 0 0 0 0 0 0 0	619	ОТВЕТ	.ПАМ	1		;РАБОЧАЯ ЯЧЕЙКА П/П ДИАГР
КАС2211 Файл ACP : Лист 13 Дата 15.6.89 (0:0)


Тг   Адрес Код:		Строка	Текст

00 0000476 0 0 0 0 0 0 0 0	620	ЧИСПРП	.ПАМ	1		;ЧИСЛО ПРОПУСКОВ СТРОК
00 0000477 0 0 0 0 0 0 0 0	621	КОП	.ПАМ	1		;КОД ОПЕРАЦИИ + ЧИСЛО ПРОПУСКОВ
00 0000500 0 0 0 0 0 0 0 0	622	КОППР	.ПАМ	1		;КОД ОПЕРАЦИИ "ПРОПУСК"
00 0000501 0 0 0 0 0 0 0 0	623	СИГНАЛЫ .ПАМ	1		;СИГНАЛЫ ОТ АБОНЕНТА
00 0000502 0 0 0 0 0 0 0 0	624	ОБЛСОХР .ПАМ	1		;РАБ. ЯЧ. АДРЕСА
00 0000503 0 0 0 0 0 0 0 0	625	СОСТ	.ПАМ	1		;БАЙТ УТОЧНЕННОГО СОСТОЯНИЯ
				626	
				627	; ***************************************************************
				628	; *			ЭКВИВАЛЕНТНОСТИ				*
				629	; ***************************************************************
	  =00000777777		630	ФПАРТ	.ЭКВ	0777777
	  =00000777776		631	ФНКАН	.ЭКВ	0777776
	  =00000777775		632	НКАН	.ЭКВ	0777775
	  =00000777774		633	ФАЦПУ	.ЭКВ	0777774
	  =00000777773		634	НАЦПУ	.ЭКВ	0777773
	  =00000777772		635	ФРЕЖТ	.ЭКВ	0777772
	  =00000777771		636	РЕЖТ	.ЭКВ	0777771
	  =00000777770		637	ФПРОП	.ЭКВ	0777770
	  =00000777767		638	ПРОП	.ЭКВ	0777767
	  =00000777766		639	ФЧИСП	.ЭКВ	0777766
	  =00000777765		640	ЧИСПР	.ЭКВ	0777765
				641		.КНЦ			;ТЕСТА АЦПУ

Начало трансляции	00:00:00.
Конец  трансляции	00:00:00.
Транслировано строк	641

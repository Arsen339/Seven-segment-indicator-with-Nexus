# Семисегментный индикатор на микросхеме Nexus компании Xillinx
Данная программа реализует следующие действия:
1)Дешифратор DC1 кодирует количество сочетаний "11" на SW[3:0]
2)Дешифратор DC2 реализует Побитовое умножение сигналов с переключателей SW[7:4] с числом "0101"
3)Дешифратор DC3 реализует функцию f=SW[0]&SW[1]&SW[2]^SW[3]
4)Выводит результат одного из пунктов(выбор пункта зависит от значений SW[8:9]) на семисегнемнтый индикатор(число индикаторов может быть изменено)

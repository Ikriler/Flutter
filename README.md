# Практическая работа №4
## Тема: cоздание проекта с использованием Cubit

#### Цель работы: cоздать проект с использованием Cubit. Реализовать кликер если светлая тема за клик прибавляет +1 если темная тема прибавляется +2. Реализовать список нажатий и при какой теме это было реализовано.

#### Ход работы: 

1.	Создание кубита для счетчика. В зависимости от темы приложения счетчик меняет прибавляемое или вычитаемое значение. 

![1](https://github.com/Ikriler/Flutter/blob/pr4/photochki/1.png "")

2.	Создание состояния для счетчика. Для состояния добавляется поле для счетчика.

![2](https://github.com/Ikriler/Flutter/blob/pr4/photochki/2.png "")

3.	Добавление на главный экран MultiBlocProvider. Он показывает какие кубиты будут использоваться.

![3](https://github.com/Ikriler/Flutter/blob/pr4/photochki/3.png "")

4.	BlocBuilder счетчика. Благодаря BlocBuilder можно перерисовывать только тот виджет, который мы меняем.

![4](https://github.com/Ikriler/Flutter/blob/pr4/photochki/4.png "")

5.	Кубит для изменения темы приложения.

![5](https://github.com/Ikriler/Flutter/blob/pr4/photochki/5.png "")

6.	Состояние для изменения темы

![6](https://github.com/Ikriler/Flutter/blob/pr4/photochki/6.png "")

7.	BlocBuilder для изменения темы.

![7](https://github.com/Ikriler/Flutter/blob/pr4/photochki/7.png "")

8.	Кубит для добавления записи в историю

![8](https://github.com/Ikriler/Flutter/blob/pr4/photochki/8.png "")

9.	Состояние для добавления записи в историю

![9](https://github.com/Ikriler/Flutter/blob/pr4/photochki/9.png "")

10.	 BlocBuilder для добавления записей в историю

![10](https://github.com/Ikriler/Flutter/blob/pr4/photochki/10.png "")

11.	 Итоговый вид приложения

![11](https://github.com/Ikriler/Flutter/blob/pr4/photochki/11.png "")

#### Вывод: cоздал проект с использованием Cubit. Реализовал кликер если светлая тема за клик прибавляет +1 если темная тема прибавляется +2. Реализовал список нажатий и при какой теме это было реализовано.

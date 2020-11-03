create table Employee (
ID_Employee int not null primary key identity,
Full_name text not null,
Position text not null,
Department text not null
)
insert into Employee ([Full_name], [Position], [Department])
values
('Костин Сергей Евгеньевич', 'Manager', 'Отдел продаж'),
('Носов Александр Лукьянович', 'Software Developer','Коммерческий отдел'),
('Тарасов Макар Миронович', 'Manager', 'Отдел продаж'),
('Зимин Богдан Гордеевич', 'Software Developer', 'Отдел продаж'),
('Исаков Алан Кимович', 'Software Developer', 'Коммерческий отдел'),
('Петров Велор Русланович', 'Manager', 'Отдел продаж'),
('Гусев Аркадий Павлович', 'Software Developer', 'Коммерческий отдел'),
('Гусев Павел Русланович', 'HR', 'Отдел кадров'),
('Игнатов Федор Юрьевич', 'Software Developer', 'Коммерческий отдел'),
('Яковлева Мелитта Вячеславовна', 'HR', 'Отдел кадров'),
('Щукина Адель Ефимовна', 'Software Developer', 'Коммерческий отдел'),
('Назарова Есения Григорьевна', 'HR', 'Отдел кадров'),
('Киселёва Раиса Анатольевна', 'Software Developer', 'Отдел логистики'),
('Орехова Авигея Мэлоровна', 'Software Developer', 'Отдел логистики'),
('Овчинникова Азалия Данииловна', 'Software Developer', 'Отдел кадров')

Select CAST(Department as nvarchar(100)) as Department from Employee
Where Position LIKE 'Software Developer'
Group by CAST(Department as nvarchar(100))
HAVING COUNT (*) < 5
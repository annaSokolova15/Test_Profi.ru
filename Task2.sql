create table Employee (
ID_Employee int not null primary key identity,
Full_name text not null,
Position text not null,
Department text not null
)
insert into Employee ([Full_name], [Position], [Department])
values
('������ ������ ����������', 'Manager', '����� ������'),
('����� ��������� ����������', 'Software Developer','������������ �����'),
('������� ����� ���������', 'Manager', '����� ������'),
('����� ������ ���������', 'Software Developer', '����� ������'),
('������ ���� �������', 'Software Developer', '������������ �����'),
('������ ����� ����������', 'Manager', '����� ������'),
('����� ������� ��������', 'Software Developer', '������������ �����'),
('����� ����� ����������', 'HR', '����� ������'),
('������� ����� �������', 'Software Developer', '������������ �����'),
('�������� ������� ������������', 'HR', '����� ������'),
('������ ����� ��������', 'Software Developer', '������������ �����'),
('�������� ������ �����������', 'HR', '����� ������'),
('������� ����� �����������', 'Software Developer', '����� ���������'),
('������� ������ ���������', 'Software Developer', '����� ���������'),
('����������� ������ ����������', 'Software Developer', '����� ������')

Select CAST(Department as nvarchar(100)) as Department from Employee
Where Position LIKE 'Software Developer'
Group by CAST(Department as nvarchar(100))
HAVING COUNT (*) < 5
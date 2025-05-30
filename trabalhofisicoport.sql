create database trabalhoportfolio;

use trabalhoportfolio;

create table aluno (
id_aluno integer primary key auto_increment,
nome char (30),
email char (40),
cpf char (12),
senha char (10)
);

create table professor (
id_professor integer primary key auto_increment,
nome char (30),
email char (40),
cpf char (12),
senha char (10)
);

create table materia (
id_materia integer primary key auto_increment,
duracao char (15),
nomecurso char (25)
);

create table diciplina(
id_diciplina integer primary key auto_increment,
nome char(30)
);

create table matricula (
id_matricula integer primary key auto_increment,
aluno char (30),
notafinal char (5),
turma char (20),
id_aluno integer,
foreign key (id_aluno) references aluno(id_aluno)
);

create table turma (
id_turma integer primary key auto_increment,
nometurma char (20),
professorresponsavel char (30),
id_materia integer,
foreign key (id_materia) references materia(id_materia)
);

create table cadastro(
id_cadastro integer primary key auto_increment,
status char (10),
tipo char (10),
id_aluno integer,
id_professor integer,
foreign key (id_aluno) references aluno(id_aluno),
foreign key (id_professor) references professor(id_professor)
);

create table aluno_matricula (
id_aluno_matricula integer primary key auto_increment,
id_aluno integer,
id_matricula integer,
foreign key (id_aluno) references aluno(id_aluno),
foreign key (id_matricula) references matricula(id_matricula)
);

create table matricula_turma (
id_matricula_turma integer primary key auto_increment,
id_matricula integer,
id_turma integer,
foreign key (id_matricula) references matricula(id_matricula),
foreign key (id_turma) references turma(id_turma)
);

create table turma_diciplina (
id_turma_diciplina integer primary key auto_increment,
id_turma integer,
id_diciplina integer,
 foreign key (id_turma) references turma(id_turma),
 foreign key(id_diciplina) references diciplina(id_diciplina)
 );
 
 create table professor_turma (
 id_professor_turma integer primary key auto_increment,
 id_professor integer,
 id_turma integer,
 foreign key (id_professor) references professor(id_professor),
 foreign key (id_turma) references turma(id_turma)
 );
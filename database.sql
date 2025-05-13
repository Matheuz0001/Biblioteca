create database biblioteca;
use biblioteca;
create table Autores(
id int auto_increment primary key,
nome varchar(100) not null,
nacionalidade varchar(50)
);

create table Livros(
id int auto_increment primary key,
titulo varchar(200) not null,
isbn varchar(20) unique,
autor_id int not null, 
quantidade int not null default 1,
foreign key (autor_id) references Autores(id)
);

create table Alunos( 
id int auto_increment primary key,
nomme varchar(100) not null,
matricula varchar(20) unique not null,
email varchar(100) unique not null, 
senha_hash varchar(255) not null
);

create table Emprestimos(
id int auto_increment primary key, 
livro_id int not null,
aluno_id int not null,
data_emprestimo date not null,
data_devolucao date,
status enum('ativo', 'devolvido', 'atrasado') not null default 'ativo',
foreign key (livro_id) references Livros(id),
foreign key (aluno_id) references Alunos(id)
);

-- Melhora de performance nas consultas (Nem sei se precisa) 
create index idx_livro_autor on Livros(autor_id);
create index idx_emrestimo_livro on Emprestimos(livro_id);
create index idx_emprestimo_aluno on Emprestimos(aluno_id);
create index idx_emprestimo_status on Emprestimos(status);


alter table Alunos 
change column nomme nome varchar(100) not null;
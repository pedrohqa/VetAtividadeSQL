	-- Nome: Pedro Araujo - Atividade banco de dados MySQL
    
                    -- Exercicio 1
		-- arrumar cadastro do elefante para alergico
select* from animal;

update Animal
set alergico = 1
where CodAnimal = 3;


                    -- Exercicio 2
		-- novo registro da Suzi e seu camelo
select* from cliente;
INSERT INTO Cliente(Nome, Endereco, Celular, Telefone, CPF) 
VALUES ('Suzi João', 'Rua Evangelista, 15 - Vila Europa', '11933783512', '1141245323', '77671247305');

select* from animal;

insert into animal(CodCliente,Nome, Tipo, Raca, Idade, Alergico)
values(8,'Pitagoras','Camelo','asiático', '92', 0);

select* from grandeporte;

insert into GrandePorte(AlturaM, PesoT, CodAnimal)
values(2.25, 0.7, 7);


                    -- Exercicio 3
			-- deletar o max e seu dono
delete from Animal 
where CodAnimal = 5;

delete from Cliente 
where CodCliente = 5;

                    
                    -- Exercicio 4
		-- agendar consulta para girafa para inicio da tarde
insert into Consulta(CRMV, CodAnimal, DataHoraConsulta)
values(98654, 1, '2023-11-16 14:00');
        
        
                    -- Exercicio 5
				-- ADD nvo veterinario Paulo
insert into veterinario(Nome, CRMV, Endereco, Telefone, Celular) 
VALUES ('Paulo','25436','Rua Aparecida, 754 - Jardim Paraiso','1146867934','159926189202');
                    
                    
                    -- Exercicio 6
			-- ajustar prefixo do celular do vetrinario
update veterinario 
set celular = '11996587412'
where CRMV = '98654';
                    
                    
                    -- Exercicio 7  
-- excluir cadastro dos clientes que não possuem mais cachorros (7,3)
delete from cliente
where CodCliente in(7,3);
                    
                    
                    -- Exercicio 8
-- criar usuario "doação" para um gata achado e marcar uma consulta pra ele
insert into cliente(Nome, CPF)
values('Adoção','12345');

insert into animal(CodCliente,Nome, Tipo, Raca, Idade, Alergico)
values(9,'SKY','Gato','SRD', '1', 0);

insert into consulta(CRMV, CodAnimal, DataHoraConsulta) 
VALUES ('25436', 8, '2023-11-23 10:00');

                    
                    -- Exercicio 9
-- atualizar a consulta da girafa para manhã e atendida pelo Paulão
update consulta
set CRMV = '25436', DataHoraConsulta = '2023-11-16 10:00:00'
where CodConsulta = 3;


                    -- Exercicio 10
		-- ADD cliente Henrique e ele ira adotar a SKY
insert into cliente(Nome, Endereco, Celular, Telefone, CPF)
VALUES ('Henrique Nagata', 'Rua doze, 43 - Vila Azul', '11989452565', '1149992677', '12216736678');

update animal 
set CodCliente = 10
where CodAnimal = 12;
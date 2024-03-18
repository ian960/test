-- 1. Exibir todos os produtos que apresentem preço unitário entre R$ 10,00 e R$ 30,00.
SELECT * FROM Produtos WHERE PreçoUnitário BETWEEN 10 AND 30;

-- 2. Exibir todos os produtos com preço unitários maior que R$ 100,00.
SELECT * FROM Produtos WHERE PreçoUnitário > 100;

-- 3. Exibir todos os funcionários com número de telefone desconhecido.
SELECT * FROM Funcionários WHERE TelefoneResidencial IS NULL;

-- 4. Exibir todos os produtos que estejam com o estoque real (UnidadeEmEstoque) abaixo do estoque mínimo (NívelDeReposição).
SELECT * FROM Produtos WHERE UnidadesEmEstoque < NívelDeReposição;

-- 5. Exibir todos os produtos cujo código da categoria seja 1, 2 ou 3 e o preço unitário esteja entre R$10,00 e R$ 50,00.
SELECT * FROM Produtos WHERE CódigoDaCategoria IN (1, 2, 3) AND PreçoUnitário BETWEEN 10 AND 50;

-- 6. Exibir todos os clientes que não tem fax.
SELECT * FROM Clientes WHERE Fax IS NULL;

-- 7. Exibir todos os funcionários que nasceram entre 01/01/55 e 31/12/63 ordenados pelo nome em ordem ascendente.
SELECT * FROM Funcionários WHERE DataDeNascimento BETWEEN '1955-01-01' AND '1963-12-31' ORDER BY Nome ASC;

-- 8. Exibir os funcionários cujo tratamento seja “Sr.”, ordenados pelo nome em ordem ascendente.
SELECT * FROM Funcionários WHERE Tratamento = 'Sr.' ORDER BY Nome ASC;

-- 9. Exibir o código dos clientes que já pagaram mais de R$ 100,00 de frete.
SELECT CódigoDoCliente FROM Pedidos WHERE Frete > 100;

-- 10. Exibir todos os dados dos funcionários cujo tratamento seja “Dr.”, que moram no EUA e o seu telefone apresente os números “555”, ordenados pelo nome em ordem ascendente.
SELECT * FROM Funcionários WHERE Tratamento = 'Dr.' AND País = 'USA' AND TelefoneResidencial LIKE '%555%' ORDER BY Nome ASC;

-- 11. Exibir CódigoDoProduto, NomeDoProduto e PreçoUnitário dos produtos com UnidadesEmEstoque menor ou igual a 3 e o CódigoDaCategoria diferente de 1 ou 3, ordenados pelo nome do produto em ordem descendente.
SELECT CódigoDoProduto, NomeDoProduto, PreçoUnitário FROM Produtos WHERE UnidadesEmEstoque <= 3 AND CódigoDaCategoria NOT IN (1, 3) ORDER BY NomeDoProduto DESC;

-- 12. Exibir os funcionários que nasceram antes de 31/12/60 na cidade de “London”, ordenados pelo nome em ordem ascendente.
SELECT * FROM Funcionários WHERE DataDeNascimento < '1960-12-31' AND Cidade = 'London' ORDER BY Nome ASC;

-- 13. Exibir o nome (NomeDoProduto) e o preço de venda (PreçoUnitário) dos produtos cuja descrição contenha a palavra "chocolate" com preço de venda maior ou igual a R$ 15,00, ordenados pelo preço de venda em ordem descendente.
SELECT NomeDoProduto, PreçoUnitário FROM Produtos WHERE Descrição LIKE '%chocolate%' AND PreçoUnitário >= 15 ORDER BY PreçoUnitário DESC;

-- 14. Exibir o código e o nome dos funcionários, exceto aqueles cujos nomes iniciam pelas letras A ou M, ordenados pelo nome em ordem ascendente.
SELECT CódigoDoFuncionário, Nome FROM Funcionários WHERE Nome NOT LIKE 'A%' AND Nome NOT LIKE 'M%' ORDER BY Nome ASC;

-- 15. Exibir todos os pedidos atendidos pela transportadora Federal Shipping (Via = 3), e com valor do frete maior ou igual a R$ 100,00, ordenados pelo NúmeroDoPedido e em ordem ascendente.
SELECT * FROM Pedidos WHERE Via = 3 AND Frete >= 100 ORDER BY NúmeroDoPedido ASC;

-- 16. Exibir os clientes que começam com a letra “C”.
SELECT * FROM Clientes WHERE NomeDaEmpresa LIKE 'C%';

-- 17. Exibir os funcionários que tenham na segunda letra do seu sobrenome a letra “a”.
SELECT * FROM Funcionários WHERE SobreNome LIKE '_a%';

-- 18. Exibir os funcionários estrangeiros.
SELECT * FROM Funcionários WHERE País <> 'USA';

-- 19. Exibir os funcionários que nasceram nos Estados Unidos.
SELECT * FROM Funcionários WHERE País = 'USA';

-- 20. Exibir CódigoDaCategoria, NomeDaCategoria e Descrição das categorias que começam com a letra “B” ou “C”.
SELECT CódigoDaCategoria, NomeDaCategoria, Descrição FROM Categorias WHERE NomeDaCategoria LIKE 'B%' OR NomeDaCategoria LIKE 'C%';

-- 21. Exibir os funcionários que têm TelefoneResidencial.
SELECT * FROM Funcionários WHERE TelefoneResidencial IS NOT NULL;

-- 22. Exibir os funcionários que não têm TelefoneResidencial.
SELECT * FROM Funcionários WHERE TelefoneResidencial IS NULL;

-- 23. Exibir o NúmeroDoPedido,CódigoDoProduto e Preço Total (PreçoUnitário * Quantidade) dos produtos cujo preço Total seja maior ou igual a R$200,00.
SELECT NúmeroDoPedido, CódigoDoProduto, (PreçoUnitário * Quantidade) AS PreçoTotal FROM DetalhesDoPedido WHERE (PreçoUnitário * Quantidade) >= 200;

-- 24. Exibir o CódigoDoFornecedor, NomeDaEmpresa e NomeDoContato dos fornecedores cujo país seja a Alemanha ou Japão.
SELECT CódigoDoFornecedor, NomeDaEmpresa, NomeDoContato FROM Fornecedores WHERE País IN ('Alemanha', 'Japão');

-- 25. Exibir os fornecedores que não são da Alemanha nem do Japão.
SELECT * FROM Fornecedores WHERE País NOT IN ('Alemanha', 'Japão');

-- 26. Exibir o preço de custo (PreçoUnitário), o preço de venda (PreçoUnitário + 25%) e uma coluna com a diferença existente entre esses dois preços, da tabela Produtos, apenas dos produtos que apresentam preço de venda maior que R$ 200,00.
SELECT PreçoUnitário, PreçoUnitário * 1.25 AS PreçoDeVenda, (PreçoUnitário * 1.25) - PreçoUnitário AS DiferençaDePreço FROM Produtos WHERE (PreçoUnitário * 1.25) > 200;

-- 27. Exibir os fornecedores cujo nome termine com a letra “s”.
SELECT * FROM Fornecedores WHERE NomeDaEmpresa LIKE '%s';

-- 28. Exibir todos os pedidos que apresentam frete menor que R$ 30,00.
SELECT * FROM Pedidos WHERE Frete < 30;

-- 29. Exibir os pedidos que foram feitos para o México.
SELECT * FROM Pedidos WHERE PaísDeDestino = 'México';

-- 30. Exibir os pedidos que foram feitos para a Alemanha, Itália e França.
SELECT * FROM Pedidos WHERE PaísDeDestino IN ('Alemanha', 'Itália', 'França');

-- 31. Exibir os funcionários que pertença ao cargo de “Representante de Vendas” e o tratamento seja “Sr.”.
SELECT * FROM Funcionários WHERE Cargo = 'Representante de Vendas' AND Tratamento = 'Sr.';

-- 32. Exibir os funcionários que não são “Sra.”.
SELECT * FROM Funcionários WHERE Tratamento <> 'Sra.';

-- 33. Exibir o nome dos funcionários e uma coluna com a idade deles com o título “Idade”, apenas dos maiores de 20 anos.
SELECT Nome, TIMESTAMPDIFF(YEAR, DataDeNascimento, CURDATE()) AS Idade FROM Funcionários WHERE TIMESTAMPDIFF(YEAR, DataDeNascimento, CURDATE()) > 20;

-- 34. Exibir os funcionários contratados entre os meses de Abril e Novembro de 1993.
SELECT * FROM Funcionários WHERE YEAR(DataDeContratação) = 1993 AND MONTH(DataDeContratação) BETWEEN 4 AND 11;

-- 35. Exibir os funcionários que são supervisionados por “Fuller, Andrew”.
SELECT * FROM Funcionários WHERE Supervisor = 'Fuller, Andrew';

-- 36. Exibir o CódigoDaCategoria e o NomeDaCategoria que tenham no seu nome “massas” ou “doces”.
SELECT CódigoDaCategoria, NomeDaCategoria FROM Categorias WHERE NomeDaCategoria LIKE '%massas%' OR NomeDaCategoria LIKE '%doces%';

-- 37. Exibir o NúmeroDoPedido e o CódigoDoCliente, para os pedidos que passaram mais de 30 dias para serem entregue.
SELECT NúmeroDoPedido, CódigoDoCliente FROM Pedidos WHERE DATEDIFF(DataDeEntrega, DataDoPedido) > 30;

-- 38. Exibir o NúmeroDoPedido dos pedidos que passaram entre 10 e 15 dias para serem entregues.
SELECT NúmeroDoPedido FROM Pedidos WHERE DATEDIFF(DataDeEntrega, DataDoPedido) BETWEEN 10 AND 15;

-- 39. Exibir os pedidos que ainda não foram enviados.
SELECT * FROM Pedidos WHERE DataDeEnvio IS NULL;

-- 40. Exibir NúmeroDoPedido e o CódigoDoProduto da tabela DetalheDoPedido cuja quantidade seja maior ou igual a 40.
SELECT NúmeroDoPedido, CódigoDoProduto FROM DetalhesDoPedido WHERE Quantidade >= 40;

-- 41. Exibir NúmeroDoPedido com o título “Pedido” e o CódigoDoProduto com o título “Produto”, da tabela DetalheDoPedido cujo desconto foi entre 10 e 15%.
SELECT NúmeroDoPedido AS Pedido, CódigoDoProduto AS Produto FROM DetalhesDoPedido WHERE Desconto BETWEEN 10 AND 15;

-- 42. Exibir os pedidos que foram entregues no segundo semestre de 1996.
SELECT * FROM Pedidos WHERE YEAR(DataDeEntrega) = 1996 AND MONTH(DataDeEntrega) BETWEEN 7 AND 12;

-- 43. Exibir os pedidos que foram entregues no segundo trimestre de 1997.
SELECT * FROM Pedidos WHERE YEAR(DataDeEntrega) = 1997 AND MONTH(DataDeEntrega) BETWEEN 4 AND 6;

-- 44. Exibir o nome dos funcionários que fazem aniversário no mês de Agosto.
SELECT Nome FROM Funcionários WHERE MONTH(DataDeNascimento) = 8;

-- 45. Exibir o código da transportadora que não tem telefone.
SELECT CódigoDaTransportadora FROM Transportadoras WHERE Telefone IS NULL;

-- 46. Exibir o nome da Empresa, com o título “Empresa”, o nome do Contato, com o título “Contato” e o telefone dos fornecedores que não apresentam fax.
SELECT NomeDaEmpresa AS Empresa, NomeDoContato AS Contato, Telefone FROM Fornecedores WHERE Fax IS NULL;

-- 47. Mostrar o nome dos funcionários e a data de contratação, com o título “Data Contrato”, dos que não foram contratados em 1992 e 1994.
SELECT Nome, DataDeContratação AS 'Data Contrato' FROM Funcionários WHERE YEAR(DataDeContratação) NOT IN (1992, 1994);

-- 48. Mostrar o nome da empresa e o nome dos contatos para os clientes que tenha no seu código a segunda letra “A” e a última “R”.
SELECT NomeDaEmpresa, NomeDoContato FROM Clientes WHERE SUBSTRING(NomeDaEmpresa, 2, 1) = 'A' AND RIGHT(NomeDaEmpresa, 1) = 'R';

-- 49. Exibir o número do pedido, com o título “Pedido” e a Data do Pedido, com o título “Dt Pedido” para os pedidos feitos pelos clientes cujo código comece com a letra pertencente ao intervalor A – E.
SELECT NúmeroDoPedido AS Pedido, DataDoPedido AS 'Dt Pedido' FROM Pedidos WHERE LEFT(CódigoDoCliente, 1) BETWEEN 'A' AND 'E';

-- 50. Exibir o nome do cliente, o nome do Contato e o código dos clientes cujo nome não seja iniciado com as letras B, E, J e G.
SELECT NomeDaEmpresa AS Cliente, NomeDoContato AS Contato, CódigoDoCliente FROM Clientes WHERE LEFT(NomeDaEmpresa, 1) NOT IN ('B', 'E', 'J', 'G');



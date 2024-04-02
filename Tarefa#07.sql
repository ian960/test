-- Questão 1
SELECT NomeDoProduto 
FROM Produtos 
WHERE PreçoUnitário > (SELECT AVG(PreçoUnitário) FROM Produtos);

-- Questão 2
SELECT DISTINCT c.NomeDaEmpresa 
FROM Clientes c
JOIN Pedidos p ON c.CódigoDoCliente = p.CódigoDoCliente
JOIN DetalhesDoPedido dp ON p.NúmeroDoPedido = dp.NúmeroDoPedido
JOIN Produtos pr ON dp.CódigoDoProduto = pr.CódigoDoProduto
WHERE pr.NomeDoProduto = 'Maxilaku';

-- Questão 3
SELECT NúmeroDoPedido 
FROM Pedidos 
GROUP BY NúmeroDoPedido 
HAVING COUNT(*) > 5;

-- Questão 4
SELECT c.NomeDaEmpresa, MAX((PreçoUnitário * Quantidade) - Desconto) AS MaiorPedido 
FROM Clientes c
JOIN Pedidos p ON c.CódigoDoCliente = p.CódigoDoCliente
JOIN DetalhesDoPedido dp ON p.NúmeroDoPedido = dp.NúmeroDoPedido
GROUP BY c.NomeDaEmpresa;

-- Questão 5
SELECT NomeDoProduto, MAX(Quantidade) AS MaiorQuantidade 
FROM Produtos 
GROUP BY NomeDoProduto;

-- Questão 6
SELECT NomeDoProduto, MIN(PreçoUnitário) AS PreçoMaisBaixo 
FROM Produtos 
GROUP BY NomeDoProduto;

-- Questão 7
SELECT NúmeroDoPedido 
FROM Pedidos 
WHERE Via = 1 AND YEAR(DataDoPedido) = 1996 AND MONTH(DataDoPedido) BETWEEN 4 AND 6;

-- Questão 8
SELECT NúmeroDoPedido 
FROM Pedidos 
WHERE (YEAR(DataDoPedido) = 1996 AND MONTH(DataDoPedido) = 3) OR (YEAR(DataDoPedido) = 1997 AND MONTH(DataDoPedido) = 4);

-- Questão 9
SELECT NúmeroDoPedido 
FROM Pedidos 
WHERE (YEAR(DataDoPedido) = 1997 AND MONTH(DataDoPedido) BETWEEN 4 AND 6) AND ((PreçoUnitário * Quantidade) - Desconto) > (SELECT AVG((PreçoUnitário * Quantidade) - Desconto) FROM Pedidos WHERE YEAR(DataDoPedido) = 1997 AND MONTH(DataDoPedido) BETWEEN 4 AND 6);

-- Questão 10
SELECT DISTINCT f.NomeDaEmpresa 
FROM Fornecedores f
JOIN Produtos p ON f.CódigoDoFornecedor = p.CódigoDoFornecedor
WHERE p.PreçoUnitário > (SELECT AVG(PreçoUnitário) FROM Produtos);

-- Questão 11
SELECT NomeDoProduto, PreçoUnitário 
FROM Produtos 
WHERE CódigoDaCategoria = (SELECT CódigoDaCategoria FROM Categorias WHERE NomeDaCategoria = 'Confeitos');

-- Questão 12
SELECT NúmeroDoPedido, CódigoDoCliente, DataDoPedido 
FROM Pedidos 
WHERE CódigoDaTransportadora IN (SELECT CódigoDaTransportadora FROM Transportadoras WHERE NomeDaEmpresa IN ('Speedy Express', 'Federal Shipping')) AND YEAR(DataDoPedido) = 1996 AND MONTH(DataDoPedido) BETWEEN 4 AND 6;

-- Questão 13
SELECT c.NomeDaEmpresa, p.NúmeroDoPedido, p.DataDoPedido 
FROM Clientes c
JOIN Pedidos p ON c.CódigoDoCliente = p.CódigoDoCliente
WHERE (YEAR(p.DataDoPedido) = 1996 AND MONTH(p.DataDoPedido) = 8) OR (YEAR(p.DataDoPedido) = 1997 AND MONTH(p.DataDoPedido) = 9);

-- Questão 14
SELECT NúmeroDoPedido 
FROM Pedidos 
WHERE CódigoDoCliente IN (SELECT CódigoDoCliente FROM Clientes WHERE Fax IS NULL);

-- Questão 15
SELECT NomeDaEmpresa 
FROM Clientes 
GROUP BY NomeDaEmpresa 
HAVING SUM((PreçoUnitário * Quantidade) - Desconto) > (SELECT AVG((PreçoUnitário * Quantidade) - Desconto) FROM Pedidos);

-- Questão 16
SELECT Nome 
FROM Funcionários 
WHERE DataDeNascimento < (SELECT AVG(DataDeNascimento) FROM Funcionários);

-- Questão 17
SELECT Nome 
FROM Funcionários 
GROUP BY Nome 
HAVING COUNT(*) > (SELECT AVG(PedidosFeitos) FROM (SELECT COUNT(*) AS PedidosFeitos FROM Pedidos GROUP BY CódigoDoFuncionário) AS SubQuery);

-- Questão 18
SELECT NúmeroDoPedido 
FROM Pedidos 
WHERE CódigoDoCliente IN (SELECT CódigoDoCliente FROM Clientes WHERE Fax IS NULL);

-- Questão 19
SELECT NomeDaEmpresa 
FROM Clientes 
WHERE CódigoDoCliente NOT IN (SELECT DISTINCT CódigoDoCliente FROM Pedidos);

-- Questão 20
SELECT DISTINCT p.NúmeroDoPedido 
FROM Pedidos p
JOIN DetalhesDoPedido dp ON p.NúmeroDoPedido = dp.NúmeroDoPedido
JOIN Produtos pr ON dp.CódigoDoProduto = pr.CódigoDoProduto
JOIN Categorias c ON pr.CódigoDaCategoria = c.CódigoDaCategoria
WHERE c.NomeDaCategoria = 'Bebidas';

-- Questão 21
SELECT DISTINCT f.NomeDaEmpresa 
FROM Fornecedores f
JOIN Produtos p ON f.CódigoDoFornecedor = p.CódigoDoFornecedor
JOIN DetalhesDoPedido dp ON p.CódigoDoProduto = dp.CódigoDoProduto
JOIN Pedidos pd ON dp.NúmeroDoPedido = pd.NúmeroDoPedido
JOIN Clientes c ON pd.CódigoDoCliente = c.CódigoDoCliente
WHERE c.NomeDaEmpresa IN ('Antonio Moreno Taquería', 'Blauer See Delikatessen', 'Ernst Handel');

-- Questão 22
SELECT DISTINCT c.NomeDaEmpresa 
FROM Clientes c
JOIN Pedidos p ON c.CódigoDoCliente = p.CódigoDoCliente
WHERE Frete > (SELECT AVG(Frete) FROM Pedidos);

-- Questão 23
SELECT NomeDoProduto 
FROM Produtos 
WHERE Desconto < (SELECT AVG(Desconto) FROM Produtos);

-- Questão 24
SELECT DISTINCT f.NomeDaEmpresa 
FROM Fornecedores f
JOIN Produtos p ON f.CódigoDoFornecedor = p.CódigoDoFornecedor
WHERE p.PreçoUnitário > (SELECT AVG(PreçoUnitário) FROM Produtos);

-- Questão 25
SELECT NomeDoProduto 
FROM Produtos 
WHERE UnidadesEmEstoque < (SELECT AVG(UnidadesVendidas) FROM (SELECT SUM(Quantidade) AS UnidadesVendidas FROM DetalhesDoPedido GROUP BY CódigoDoProduto) AS SubQuery);

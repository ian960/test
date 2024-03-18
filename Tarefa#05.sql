-- 1. Exibir o Número do Pedido, o nome da Empresa, o Telefone e o Fax de todos os clientes que realizaram pedidos.
SELECT Pedidos.NúmeroDoPedido, Clientes.NomeDaEmpresa AS Nome_Empresa, Clientes.Telefone, Clientes.Fax
FROM Pedidos
INNER JOIN Clientes ON Pedidos.CódigoDoCliente = Clientes.CódigoDoCliente;

-- 2. Exibir o Código do Cliente, o nome da Empresa (Cliente), a Data de solicitação do pedido e o valor do frete pago.
SELECT Pedidos.CódigoDoCliente, Clientes.NomeDaEmpresa AS Nome_Empresa, Pedidos.DataDoPedido, Pedidos.Frete
FROM Pedidos
INNER JOIN Clientes ON Pedidos.CódigoDoCliente = Clientes.CódigoDoCliente;

-- 3. Informar o Código do Funcionário, nome, Cargo, Código do Cliente e a Data do Pedido de todos os pedidos realizados.
SELECT Pedidos.CódigoDoFuncionário, Funcionários.Nome, Funcionários.Cargo, Pedidos.CódigoDoCliente, Pedidos.DataDoPedido
FROM Pedidos
INNER JOIN Funcionários ON Pedidos.CódigoDoFuncionário = Funcionários.CódigoDoFuncionário;

-- 4. Exibir o Número do Pedido, a Data do Pedido, a Data de Entrega e o nome da Empresa que fez o transporte.
SELECT Pedidos.NúmeroDoPedido, Pedidos.DataDoPedido, Pedidos.DataDeEntrega, Transportadoras.NomeDaEmpresa AS Nome_Transportadora
FROM Pedidos
INNER JOIN Transportadoras ON Pedidos.Via = Transportadoras.CódigoDaTransportadora;

-- 5. Exibir o nome do funcionário, o número do pedido e o nome da empresa de todos os pedidos realizados.
SELECT Funcionários.Nome AS Nome_Funcionário, Pedidos.NúmeroDoPedido, Clientes.NomeDaEmpresa AS Nome_Empresa
FROM Pedidos
INNER JOIN Funcionários ON Pedidos.CódigoDoFuncionário = Funcionários.CódigoDoFuncionário
INNER JOIN Clientes ON Pedidos.CódigoDoCliente = Clientes.CódigoDoCliente;

-- 6. Exibir o nome do Produto, o nome da Categoria e o nome da Empresa (Fornecedor) de todo os produtos.
SELECT Produtos.NomeDoProduto, Categorias.NomeDaCategoria, Fornecedores.NomeDaEmpresa AS Nome_Fornecedor
FROM Produtos
INNER JOIN Categorias ON Produtos.CódigoDaCategoria = Categorias.CódigoDaCategoria
INNER JOIN Fornecedores ON Produtos.CódigoDoFornecedor = Fornecedores.CódigoDoFornecedor;

-- 7. Exibir o nome do Produto, o Preço Unitário, a quantidade, o Número do Pedido e o nome da Empresa que fez o transporte.
SELECT Produtos.NomeDoProduto, DetalhesDoPedido.PreçoUnitário, DetalhesDoPedido.Quantidade, DetalhesDoPedido.NúmeroDoPedido, Transportadoras.NomeDaEmpresa AS Nome_Transportadora
FROM DetalhesDoPedido
INNER JOIN Produtos ON DetalhesDoPedido.CódigoDoProduto = Produtos.CódigoDoProduto
INNER JOIN Pedidos ON DetalhesDoPedido.NúmeroDoPedido = Pedidos.NúmeroDoPedido
INNER JOIN Transportadoras ON Pedidos.Via = Transportadoras.CódigoDaTransportadora;

-- 8. Exibir o nome do Produto, Data do Pedido e o nome da Empresa (Cliente) que fez o pedido.
SELECT Produtos.NomeDoProduto, Pedidos.DataDoPedido, Clientes.NomeDaEmpresa AS Nome_Empresa
FROM Pedidos
INNER JOIN Clientes ON Pedidos.CódigoDoCliente = Clientes.CódigoDoCliente
INNER JOIN DetalhesDoPedido ON Pedidos.NúmeroDoPedido = DetalhesDoPedido.NúmeroDoPedido
INNER JOIN Produtos ON DetalhesDoPedido.CódigoDoProduto = Produtos.CódigoDoProduto;

-- 9. Exibir o nome da Empresa (Fornecedor), o nome do Produto, Preço Unitário (do Produto), a Data do Pedido e o nome do Cliente que fez o pedido.
SELECT Fornecedores.NomeDaEmpresa, Produtos.NomeDoProduto, Produtos.PreçoUnitário, Pedidos.DataDoPedido, Clientes.NomeDaEmpresa AS Nome_Cliente
FROM Pedidos
INNER JOIN Clientes ON Pedidos.CódigoDoCliente = Clientes.CódigoDoCliente
INNER JOIN DetalhesDoPedido ON Pedidos.NúmeroDoPedido = DetalhesDoPedido.NúmeroDoPedido
INNER JOIN Produtos ON DetalhesDoPedido.CódigoDoProduto = Produtos.CódigoDoProduto
INNER JOIN Fornecedores ON Produtos.CódigoDoFornecedor = Fornecedores.CódigoDoFornecedor;

-- 10. Exibir o nome do funcionário e o nome da Empresa que solicitou o pedido (Cliente).
SELECT Funcionários.Nome AS Nome_Funcionário, Clientes.NomeDaEmpresa AS Nome_Empresa
FROM Pedidos
INNER JOIN Funcionários ON Pedidos.CódigoDoFuncionário = Funcionários.CódigoDoFuncionário
INNER JOIN Clientes ON Pedidos.CódigoDoCliente = Clientes.CódigoDoCliente;

-- 11. Exibir o nome da Categoria, o nome do Produto, o Preço Unitário (de Venda), Quantidade e o Desconto de todo os produtos comercializados.
SELECT Categorias.NomeDaCategoria, Produtos.NomeDoProduto, Produtos.PreçoUnitário, DetalhesDoPedido.Quantidade, DetalhesDoPedido.Desconto
FROM DetalhesDoPedido
INNER JOIN Produtos ON DetalhesDoPedido.CódigoDoProduto = Produtos.CódigoDoProduto
INNER JOIN Categorias ON Produtos.CódigoDaCategoria = Categorias.CódigoDaCategoria;

-- 12. Exibir o Número do Pedido, a Data do Pedido, o nome da Empresa (Cliente) e o nome da Empresa (Transportadora) que efetuou o transporte.
SELECT Pedidos.NúmeroDoPedido, Pedidos.DataDoPedido, Clientes.NomeDaEmpresa AS Nome_Empresa_Cliente, Transportadoras.NomeDaEmpresa AS Nome_Empresa_Transportadora
FROM Pedidos
INNER JOIN Transportadoras ON Pedidos.Via = Transportadoras.CódigoDaTransportadora
INNER JOIN Clientes ON Pedidos.CódigoDoCliente = Clientes.CódigoDoCliente;

-- 13. Exibir o Código do Produto, o nome do Produto, o Código do Fornecedor e o nome da Empresa (Fornecedor) de todos os produtos.
SELECT Produtos.CódigoDoProduto, Produtos.NomeDoProduto, Produtos.CódigoDoFornecedor, Fornecedores.NomeDaEmpresa AS Nome_Fornecedor
FROM Produtos
INNER JOIN Fornecedores ON Produtos.CódigoDoFornecedor = Fornecedores.CódigoDoFornecedor;

-- 14. Exibir o nome do funcionário, o Número do Pedido e o nome da empresa que fez o transporte.
SELECT Funcionários.Nome AS Nome_Funcionário, Pedidos.NúmeroDoPedido, Transportadoras.NomeDaEmpresa AS Nome_Empresa_Transportadora
FROM Pedidos
INNER JOIN Funcionários ON Pedidos.CódigoDoFuncionário = Funcionários.CódigoDoFuncionário
INNER JOIN Transportadoras ON Pedidos.Via = Transportadoras.CódigoDaTransportadora;

-- 15. Exibir o nome dos produtos já comercializados pela empresa.
SELECT DISTINCT Produtos.NomeDoProduto
FROM DetalhesDoPedido
INNER JOIN Produtos ON DetalhesDoPedido.CódigoDoProduto = Produtos.CódigoDoProduto;

-- 16. Exibir um relatório com o nome do funcionário o valor total de pedidos feitos pelo mesmo e duas colunas com as comissões de 5% e 10%.
SELECT Funcionários.Nome AS Nome_Funcionário, SUM(DetalhesDoPedido.PreçoUnitário * DetalhesDoPedido.Quantidade) AS Valor_Total_Pedidos, 
(SUM(DetalhesDoPedido.PreçoUnitário * DetalhesDoPedido.Quantidade) * 0.05) AS Comissão_5, 
(SUM(DetalhesDoPedido.PreçoUnitário * DetalhesDoPedido.Quantidade) * 0.1) AS Comissão_10
FROM DetalhesDoPedido
INNER JOIN Pedidos ON DetalhesDoPedido.NúmeroDoPedido = Pedidos.NúmeroDoPedido
INNER JOIN Funcionários ON Pedidos.CódigoDoFuncionário = Funcionários.CódigoDoFuncionário
GROUP BY Funcionários.Nome;

-- 17. Exibir um relatório com o nome da categoria e a quantidade de mercadorias vendidas por categoria.
SELECT Categorias.NomeDaCategoria, SUM(DetalhesDoPedido.Quantidade) AS Quantidade_Vendida
FROM DetalhesDoPedido
INNER JOIN Produtos ON DetalhesDoPedido.CódigoDoProduto = Produtos.CódigoDoProduto
INNER JOIN Categorias ON Produtos.CódigoDaCategoria = Categorias.CódigoDaCategoria
GROUP BY Categorias.NomeDaCategoria;

-- 18. Exibir o nome de todas as transportadoras com uma coluna de total de fretes pagos para essa transportadora e uma outra com o número de pedidos atendido pela mesma.
SELECT Transportadoras.NomeDaEmpresa, SUM(Pedidos.Frete) AS Total_Fretes, COUNT(*) AS Num_Pedidos_Atendidos
FROM Pedidos
INNER JOIN Transportadoras ON Pedidos.Via = Transportadoras.CódigoDaTransportadora
GROUP BY Transportadoras.NomeDaEmpresa;

-- 19. Exibir um relatório com o nome do cliente e o valor dos descontos dados a ele.
SELECT Clientes.NomeDaEmpresa AS Nome_Cliente, SUM(DetalhesDoPedido.Desconto) AS Valor_Descontos
FROM Pedidos
INNER JOIN Clientes ON Pedidos.CódigoDoCliente = Clientes.CódigoDoCliente
INNER JOIN DetalhesDoPedido ON Pedidos.NúmeroDoPedido = DetalhesDoPedido.NúmeroDoPedido
GROUP BY Clientes.NomeDaEmpresa;

-- 20. Exibir um relatório com o nome do funcionário e o total de desconto dado por ele.
SELECT Funcionários.Nome AS Nome_Funcionário, SUM(DetalhesDoPedido.Desconto) AS Total_Desconto
FROM Pedidos
INNER JOIN Funcionários ON Pedidos.CódigoDoFuncionário = Funcionários.CódigoDoFuncionário
INNER JOIN DetalhesDoPedido ON Pedidos.NúmeroDoPedido = DetalhesDoPedido.NúmeroDoPedido
GROUP BY Funcionários.Nome;

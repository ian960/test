-- 1. Exibir o total de frete pago.
SELECT SUM(Frete) AS Total_Frete_Pago
FROM Pedidos;

-- 2. Quantos funcionários foram contratados em 1992.
SELECT COUNT(*) AS Total_Funcionarios_1992
FROM Funcionários
WHERE YEAR(DataDeContratação) = 1992;

-- 3. Quantos fornecedores são da Alemanha.
SELECT COUNT(*) AS Total_Fornecedores_Alemanha
FROM Fornecedores
WHERE País = 'Alemanha';

-- 4. Qual o total de quantidades vendidas.
SELECT SUM(Quantidade) AS Total_Quantidades_Vendidas
FROM DetalhesDoPedido;

-- 5. Qual o valor do frete mais caro.
SELECT MAX(Frete) AS Frete_Mais_Caro
FROM Pedidos;

-- 6. Qual o valor do desconto mais barato.
SELECT MIN(Desconto) AS Desconto_Mais_Barato
FROM DetalhesDoPedido;

-- 7. Quantos produtos são da categoria Condimentos (CódigoDaCategoria = 2).
SELECT COUNT(*) AS Total_Produtos_Condimentos
FROM Produtos
WHERE CódigoDaCategoria = 2;

-- 8. Quantas categorias começam com a letra “C” (nome da categoria).
SELECT COUNT(*) AS Total_Categorias_C
FROM Categorias
WHERE NomeDaCategoria LIKE 'C%';

-- 9. Quantos produtos estão com o estoque abaixo do nível de reposição.
SELECT COUNT(*) AS Total_Produtos_Estoque_Baixo
FROM Produtos
WHERE UnidadesEmEstoque < NívelDeReposição;

-- 10. Qual o valor total dos preços unitários em Produtos.
SELECT SUM(PreçoUnitário) AS Valor_Total_Precos_Unitarios
FROM Produtos;

-- 11. Quanto já foi vendido (PreçoUnitário * Quantidade) do produto cujo código é 51.
SELECT SUM(PreçoUnitário * Quantidade) AS Total_Vendido_Produto_51
FROM DetalhesDoPedido
WHERE CódigoDoProduto = 51;

-- 12. Quantos pedidos foram feitos pelo cliente cujo código é “ROMEY” no ano de 1996.
SELECT COUNT(*) AS Total_Pedidos_Romey_1996
FROM Pedidos
WHERE CódigoDoCliente = 'ROMEY' AND YEAR(DataDoPedido) = 1996;

-- 13. Quantos funcionários fazem aniversário no mês de julho.
SELECT COUNT(*) AS Total_Funcionarios_Aniversario_Julho
FROM Funcionários
WHERE MONTH(DataDeNascimento) = 7;

-- 14. Quantos produtos começam com a “C” ou “G” ou “N”.
SELECT COUNT(*) AS Total_Produtos_C_G_N
FROM Produtos
WHERE NomeDoProduto LIKE 'C%' OR NomeDoProduto LIKE 'G%' OR NomeDoProduto LIKE 'N%';

-- 15. Quantos clientes estão localizados na Alemanha, México ou Reino Unido.
SELECT COUNT(*) AS Total_Clientes_Alemanha_Mexico_ReinoUnido
FROM Clientes
WHERE País IN ('Alemanha', 'México', 'Reino Unido');

-- 16. Quantos clientes não possuem fax.
SELECT COUNT(*) AS Total_Clientes_Sem_Fax
FROM Clientes
WHERE Fax IS NULL OR Fax = '';

-- 17. Qual o total existente em estoque (PreçoUnitário*UnidadesEmEstoque).
SELECT SUM(PreçoUnitário * UnidadesEmEstoque) AS Total_Estoque
FROM Produtos;

-- 18. Qual o total já vendido (PreçoUnitário*Quantidade).
SELECT SUM(PreçoUnitário * Quantidade) AS Total_Ja_Vendido
FROM DetalhesDoPedido;

-- 19. Qual o total vendido (PreçoUnitário*Quantidade) do produto cujo código é 19.
SELECT SUM(PreçoUnitário * Quantidade) AS Total_Vendido_Produto_19
FROM DetalhesDoPedido
WHERE CódigoDoProduto = 19;

-- 20. Quanto de frete foi pago para os pedidos feitos pelo cliente cujo código é “LILAS”.
SELECT SUM(Frete) AS Frete_Pago_LILAS
FROM Pedidos
WHERE CódigoDoCliente = 'LILAS';

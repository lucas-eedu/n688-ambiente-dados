# Divisão do Trabalho — Banco de Dados (N688)
## Clínica Médica — Apresentação em Vídeo

Cada integrante deve gravar um vídeo curto (sugestão: 2 a 4 minutos) explicando sua parte.
Não precisa decorar, pode ter o arquivo aberto na tela e ir comentando.

---

## Parte 1 — Raquel: Apresentação do Problema e do Domínio

**O que apresentar:**
- Explicar brevemente o que é o trabalho (modelagem de banco de dados de uma clínica médica)
- Descrever o problema: o que o banco de dados precisa guardar e por que isso é útil
- Listar as entidades do sistema: Paciente, Médico, Especialidade, Consulta, Exame e Consulta_Exame
- Explicar de forma simples o que cada entidade representa no contexto real da clínica

**Arquivo de referência:** `entrega/relatorio/relatorio.md` (seções 1 e 2)

---

## Parte 2 — Clara: DER (Diagrama Entidade-Relacionamento)

**O que apresentar:**
- Mostrar o diagrama DER (arquivo `entrega/modelos/der.md`)
- Explicar cada relacionamento do diagrama:
  - Paciente **1:N** Consulta
  - Médico **1:N** Consulta
  - Especialidade **1:N** Médico
  - Consulta **N:N** Exame (resolvido pela entidade Consulta_Exame)
- Explicar o que significa a cardinalidade 1:N e N:N com exemplos simples

**Arquivo de referência:** `entrega/modelos/der.md`

---

## Parte 3 — Oderlan: MER (Modelo Lógico Relacional)

**O que apresentar:**
- Mostrar o modelo lógico (arquivo `entrega/modelos/mer.md`)
- Explicar a diferença entre DER e MER: o MER mostra as tabelas com seus atributos, tipos e restrições
- Mostrar as chaves primárias (PK) e estrangeiras (FK) de cada tabela
- Explicar a normalização: 1FN, 2FN e 3FN — como o modelo evita redundância de dados

**Arquivo de referência:** `entrega/modelos/mer.md`

---

## Parte 4 — Edilberto: DDL e Criação do Banco (Schema SQL)

**O que apresentar:**
- Mostrar o arquivo `entrega/sql/01_schema.sql`
- Explicar o que é DDL (linguagem de definição de dados)
- Percorrer a criação de cada tabela no script, destacando:
  - O uso de `PRIMARY KEY` e `AUTO_INCREMENT`
  - As `FOREIGN KEY` e o que elas garantem (integridade referencial)
  - O uso de `ENGINE=InnoDB` para suportar FK no MySQL
- Mostrar que a tabela `consulta_exame` resolve o N:N

**Arquivo de referência:** `entrega/sql/01_schema.sql`

---

## Parte 5 — Ícaro: Populando o Banco (INSERT) e Consultas 1 e 2

**O que apresentar:**
- Mostrar o arquivo `entrega/sql/02_populate.sql` e explicar os dados inseridos (5 por entidade)
- Apresentar a **Consulta 1** (INNER JOIN entre consulta e paciente):
  - Mostrar o SQL
  - Explicar o que o INNER JOIN faz e qual o resultado esperado
- Apresentar a **Consulta 2** (GROUP BY com COUNT por médico):
  - Mostrar o SQL
  - Explicar o que GROUP BY faz e qual o resultado esperado

**Arquivo de referência:** `entrega/sql/02_populate.sql` e `entrega/consultas/consultas.md` (consultas 1 e 2)

---

## Parte 6 — Lucas: Consultas 3, 4 e 5

**O que apresentar:**
- Apresentar a **Consulta 3** (LEFT JOIN — todos os médicos, mesmo sem consulta)
- Apresentar a **Consulta 4** (RIGHT JOIN — todas as consultas com dados do paciente)
- Apresentar a **Consulta 5** (Subquery — exames acima da média de valor):
  - Essa é a mais complexa, explicar o que a subquery interna calcula
- Encerrar com a análise final do relatório: o que funcionou bem no modelo, onde houve normalização e o que poderia ser melhorado

**Arquivo de referência:** `entrega/consultas/consultas.md` (consultas 3, 4 e 5) e `entrega/relatorio/relatorio.md` (seções 3, 4 e 5)

---

## Dicas gerais para o vídeo

- Pode compartilhar a tela com os arquivos abertos
- Não precisa executar o SQL ao vivo — só mostrar e explicar o código
- Fala simples e direta, como se estivesse explicando para um colega
- Não precisa ser perfeito, o objetivo é mostrar que entendeu a parte

# Consultas SQL - Clinica Medica

## Consulta 1 - INNER JOIN

### SQL

```sql
SELECT c.id_consulta, p.nome AS paciente, c.status
FROM consulta c
INNER JOIN paciente p ON p.id_paciente = c.id_paciente;
```

### O que a consulta faz

Relaciona cada consulta com o paciente que realizou o atendimento.

### Resultado esperado

Uma lista com o codigo da consulta, o nome do paciente e o status da consulta. Apenas consultas com paciente relacionado aparecem no resultado.

---

## Consulta 2 - GROUP BY com agregacao

### SQL

```sql
SELECT m.nome AS medico, COUNT(c.id_consulta) AS total_consultas
FROM medico m
INNER JOIN consulta c ON c.id_medico = m.id_medico
GROUP BY m.id_medico, m.nome;
```

### O que a consulta faz

Conta quantas consultas foram registradas para cada medico.

### Resultado esperado

Uma linha por medico que possui consultas, mostrando seu nome e a quantidade total de atendimentos.

---

## Consulta 3 - LEFT JOIN

### SQL

```sql
SELECT m.nome AS medico, c.id_consulta, c.status
FROM medico m
LEFT JOIN consulta c ON c.id_medico = m.id_medico
ORDER BY m.nome;
```

### O que a consulta faz

Mostra todos os medicos, inclusive os que ainda nao possuem consulta registrada.

### Resultado esperado

Uma lista com todos os medicos. Quando o medico ainda nao tiver consulta, as colunas da consulta aparecem com valor nulo.

---

## Consulta 4 - RIGHT JOIN

### SQL

```sql
SELECT p.nome AS paciente, c.id_consulta, c.status
FROM paciente p
RIGHT JOIN consulta c ON c.id_paciente = p.id_paciente;
```

### O que a consulta faz

Mostra todas as consultas a partir da tabela da direita, junto com os dados do paciente quando existir correspondencia.

### Resultado esperado

Todas as consultas cadastradas devem aparecer. Como o modelo exige paciente valido em `consulta`, cada consulta deve vir acompanhada do nome do paciente.

---

## Consulta 5 - Consulta mais complexa com subquery

### SQL

```sql
SELECT e.nome AS exame, e.valor
FROM exame e
WHERE e.valor > (
    SELECT AVG(valor)
    FROM exame
);
```

### O que a consulta faz

Busca os exames cujo valor esta acima da media de valor de todos os exames cadastrados.

### Resultado esperado

Uma lista com os exames mais caros que a media geral, mostrando nome e valor.

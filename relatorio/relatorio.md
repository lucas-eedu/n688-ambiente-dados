# Relatorio - Clinica Medica

## 1. Descricao do problema

O trabalho modela um banco de dados para uma clinica medica. O sistema precisa guardar informacoes sobre pacientes, medicos, especialidades, consultas, exames e os exames solicitados em cada consulta. Com isso, torna-se possivel registrar atendimentos e consultar dados operacionais de forma organizada.

## 2. Explicacao do modelo

O modelo foi construido de forma simples, mas suficiente para atender ao enunciado:

- `paciente` guarda os dados basicos de quem recebe atendimento;
- `especialidade` organiza as areas medicas da clinica;
- `medico` representa os profissionais da clinica;
- `consulta` guarda os dados principais do atendimento;
- `exame` representa os exames que podem ser solicitados;
- `consulta_exame` resolve o relacionamento N:N entre consulta e exame.

O relacionamento 1:N aparece entre paciente e consulta, medico e consulta, e especialidade e medico. O relacionamento N:N aparece entre consulta e exame e foi resolvido com a tabela `consulta_exame`.

## 3. Explicacao geral das consultas

As consultas foram montadas para cobrir exatamente o que o PDF exige:

1. `INNER JOIN` para relacionar consultas e pacientes;
2. `GROUP BY` com `COUNT` para totalizar consultas por medico;
3. `LEFT JOIN` para exibir todos os medicos, mesmo sem consulta;
4. `RIGHT JOIN` para exibir todas as consultas a partir da tabela da direita;
5. uma consulta com subquery para localizar exames acima da media de valor.

## 4. Analise solicitada

### 1. O modelo atende bem ao problema proposto?

Sim. O modelo atende bem ao problema porque representa os principais elementos de uma clinica medica e permite registrar consultas e exames de forma organizada.

### 2. Houve necessidade de normalizacao? Onde?

Sim. A principal normalizacao ocorreu na separacao entre `consulta` e `consulta_exame`. Sem essa divisao, os exames de cada consulta ficariam repetidos em uma unica tabela, o que causaria redundancia.

### 3. Quais consultas foram mais complexas?

A consulta mais complexa foi a quinta, pois utiliza subquery para comparar o valor de cada exame com a media geral dos valores cadastrados.

### 4. O uso de JOINs foi adequado?

Sim. Os JOINs foram usados de forma adequada porque cada um atende a um objetivo diferente: relacionar apenas registros correspondentes, manter registros sem correspondencia e garantir a visualizacao completa da tabela da direita.

### 5. Que melhorias poderiam ser feitas no modelo?

Algumas melhorias possiveis seriam:

- adicionar uma tabela de convenios;
- registrar o historico completo de prontuario;
- incluir salas de atendimento;
- guardar datas de retorno e prescricao medica.

## 5. Observacao para entrega

Antes do envio final, a equipe pode acrescentar os nomes completos e matriculas dos integrantes em uma capa ou no inicio deste relatorio, conforme a orientacao da disciplina.

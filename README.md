# N688 — Ambiente de Dados
### Trabalho de Modelagem e SQL — Clínica Médica
**Universidade de Fortaleza (Unifor)**

---

## 📋 Sobre o projeto

Modelagem completa de um banco de dados relacional para uma **clínica médica**, desenvolvida como trabalho da disciplina N688 — Ambiente de Dados.

O sistema controla pacientes, médicos, especialidades, consultas, exames e os exames solicitados em cada consulta.

---

## 🗂️ Estrutura do repositório

```
├── modelos/
│   ├── der.md          # Diagrama Entidade-Relacionamento (DER) com Mermaid
│   └── mer.md          # Modelo Lógico Relacional (MER)
│
├── sql/
│   ├── 01_schema.sql   # DDL — criação das tabelas
│   └── 02_populate.sql # DML — inserção dos dados de exemplo
│
├── consultas/
│   └── consultas.md    # 5 consultas SQL explicadas
│
├── relatorio/
│   └── relatorio.md    # Relatório final com análise do modelo
│
├── divisao.md          # Divisão do trabalho entre os integrantes
└── proposta-trabalho.pdf
```

---

## 🗃️ Modelo de dados

6 entidades com os seguintes relacionamentos:

| Relacionamento | Cardinalidade |
|---|---|
| PACIENTE → CONSULTA | 1:N |
| MEDICO → CONSULTA | 1:N |
| ESPECIALIDADE → MEDICO | 1:N |
| CONSULTA ↔ EXAME (via CONSULTA_EXAME) | N:N |

---

## 👥 Integrantes e divisão do vídeo

| Integrante | Parte |
|---|---|
| Raquel | Parte 1 — Apresentação do problema e domínio |
| Clara | Parte 2 — DER (diagrama e relacionamentos) |
| Oderlan | Parte 3 — MER (modelo lógico e normalização) |
| Edilberto | Parte 4 — DDL (criação do banco) |
| Ícaro | Parte 5 — Populate + Consultas 1 e 2 |
| Lucas | Parte 6 — Consultas 3, 4 e 5 + análise final |

> Detalhes do que cada um deve apresentar estão no arquivo `divisao.md`.

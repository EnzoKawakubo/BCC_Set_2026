# PT-BR
Teste de um CRUD de controle de fronteiras (fictício), ainda em desenvolvimento, inicialmente por meio de Python e execução por terminal.

Tentando finalizar o mais rápido possível, com planos de executar ainda em WEB.

# ENG-US
A (fictional) border control CRUD application test, still under development, initially using Python and running via terminal.

Attempting to finish ASAP as possible, with plans to eventually run it on the web. English version of the text can be found below.

# DEU-DE
Eine (fiktive) CRUD-Anwendung für die Grenzkontrolle Test, die sich noch in der Entwicklung befindet. Zunächst verwende ich Python und führe sie über das Terminal aus.

Ich versuche, die Anwendung so schnell wie möglich fertigzustellen, mit dem Ziel, sie später im Web bereitzustellen. Deutsche-Version des Textes finden Sie unten. 

# Controle de Fronteira

Projeto inspirado em jogos de inspeção de fronteira. Todos os dados e países usados no projeto devem ser fictícios.

## Requisitos

- Python 3.11 ou superior
- VS Code
- Extensão Python da Microsoft para VS Code
- MySQL instalado (a conexão com o banco no momento, não implementada)

## Configuração no Windows (PowerShell)

Abra esta pasta no VS Code e, no terminal integrado, execute:

```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
Copy-Item .env.example .env
python -m fronteira
```

Caso o PowerShell bloquear a ativação do ambiente virtual, você pode executar o Python diretamente:
```powershell
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m fronteira
```

No VS Code, selecione o interpretador da pasta `.venv`:
`Ctrl+Shift+P` → `Python: Select Interpreter` → escolha `.venv`.

## Testes

```powershell
python -m pytest
```

## Estrutura

- `src/fronteira/cli/`: interação com o terminal
- `src/fronteira/application/`: coordenação dos casos de uso
- `src/fronteira/domain/`: regras e conceitos do domínio
- `src/fronteira/repositories/`: acesso aos dados
- `src/fronteira/infrastructure/`: configuração e recursos técnicos
- `tests/`: testes automatizados
- `sql/`: scripts SQL que serão usados nas próximas etapas
- `docs/`: documentação de arquitetura e regras

## Estado atual
I - estrutura do projeto, tabelas, menu de terminal e teste inicial.

# Próximas etapas
II - Conexão com banco de dados em MySQL.

# ENG-US

A project inspired by border inspection games. All data and countries used in the project must be fictional.

## Requirements

- Python 3.11 or higher
- VS Code
- Microsoft's Python extension for VS Code
- MySQL installed (database connection not yet implemented)

## Setup on Windows (PowerShell)

Open this folder in VS Code and run the following in the integrated terminal:

```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
Copy-Item .env.example .env
python -m fronteira
```

If PowerShell blocks the activation of the virtual environment, you can run Python directly:
```powershell
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m fronteira
```

In VS Code, select the interpreter from the `.venv` folder:
`Ctrl+Shift+P` → `Python: Select Interpreter` → choose `.venv`.

## Tests

```powershell
python -m pytest
```

## Structure

- `src/fronteira/cli/`: terminal interaction
- `src/fronteira/application/`: coordination of use cases
- `src/fronteira/domain/`: domain rules and concepts
- `src/fronteira/repositories/`: data access
- `src/fronteira/infrastructure/`: configuration and technical resources
- `tests/`: automated tests
- `sql/`: SQL scripts to be used in future stages
- `docs/`: architecture and rules documentation

## Current Status
I - Project structure, tables, terminal menu, and initial test.

# Next Steps
II - Connection to a MySQL database.

# DEU-DE Grenzkontrolle

Ein Projekt, das von Spielen zur Grenzkontrolle inspiriert wurde. Alle im Projekt verwendeten Daten und Länder müssen fiktiv sein.

## Voraussetzungen

- Python 3.11 oder höher
- VS Code
- Python-Erweiterung von Microsoft für VS Code
- Installiertes MySQL (die Anbindung an die Datenbank ist derzeit noch nicht implementiert)

## Einrichtung unter Windows (PowerShell)

Öffnen Sie diesen Ordner in VS Code und führen Sie im integrierten Terminal folgende Befehle aus:

```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
Copy-Item .env.example .env
python -m fronteira
```

Falls PowerShell die Aktivierung der virtuellen Umgebung blockiert, können Sie Python auch direkt ausführen:
```powershell
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m fronteira
```

Wählen Sie in VS Code den Interpreter aus dem Ordner `.venv` aus:
`Strg+Umschalt+P` → `Python: Select Interpreter` → wählen Sie `.venv` aus.

## Tests

```powershell
python -m pytest
```

## Struktur

- `src/fronteira/cli/`: Interaktion über das Terminal
- `src/fronteira/application/`: Koordination der Anwendungsfälle (Use Cases)
- `src/fronteira/domain/`: Domänenregeln und -konzepte
- `src/fronteira/repositories/`: Datenzugriff
- `src/fronteira/infrastructure/`: Konfiguration und technische Ressourcen
- `tests/`: Automatisierte Tests
- `sql/`: SQL-Skripte für zukünftige Schritte
- `docs/`: Dokumentation der Architektur und Regeln

## Aktueller Stand
I – Projektstruktur, Tabellen, Terminal-Menü und erster Test.

## Nächste Schritte
II – Anbindung an eine MySQL-Datenbank.
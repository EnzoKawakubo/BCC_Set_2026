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
python -m border
```

Caso o PowerShell bloquear a ativação do ambiente virtual, você pode executar o Python diretamente:
```powershell
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m border
```

No VS Code, selecione o interpretador da pasta `.venv`:
`Ctrl+Shift+P` → `Python: Select Interpreter` → escolha `.venv`.

## Testes

```powershell
python -m pytest
```

## Estrutura

- `src/border/cli/`: interação com o terminal
- `src/border/application/`: coordenação dos casos de uso
- `src/border/domain/`: regras e conceitos do domínio
- `src/border/repositories/`: acesso aos dados
- `src/border/infrastructure/`: configuração e recursos técnicos
- `tests/`: testes automatizados
- `sql/`: scripts SQL que serão usados nas próximas etapas
- `docs/`: documentação de arquitetura e regras

## Estado atual
I - estrutura do projeto, tabelas, menu de terminal e teste inicial.
II - Conexão com banco de dados em MySQL.

## Próximas etapas
III - Implementar modelos Python e repositórios e viajantes e documentos, por meio de consultas parametrizadas e operações em MySQL.

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
python -m border
```

If PowerShell blocks the activation of the virtual environment, you can run Python directly:
```powershell
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m border
```

In VS Code, select the interpreter from the `.venv` folder:
`Ctrl+Shift+P` → `Python: Select Interpreter` → choose `.venv`.

## Tests

```powershell
python -m pytest
```

## Structure

- `src/border/cli/`: terminal interaction
- `src/border/application/`: coordination of use cases
- `src/border/domain/`: domain rules and concepts
- `src/border/repositories/`: data access
- `src/border/infrastructure/`: configuration and technical resources
- `tests/`: automated tests
- `sql/`: SQL scripts to be used in future stages
- `docs/`: architecture and rules documentation

## Current Status
I - Project structure, tables, terminal menu, and initial test.
II - Connection to a MySQL database.

# Next Steps
III - Implement Python models, repositories, travelers, and documents using parameterized queries and operations in MySQL.

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
python -m border
```

Falls PowerShell die Aktivierung der virtuellen Umgebung blockiert, können Sie Python auch direkt ausführen:
```powershell
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m border
```

Wählen Sie in VS Code den Interpreter aus dem Ordner `.venv` aus:
`Strg+Umschalt+P` → `Python: Select Interpreter` → wählen Sie `.venv` aus.

## Tests

```powershell
python -m pytest
```

## Struktur

- `src/border/cli/`: Interaktion über das Terminal
- `src/border/application/`: Koordination der Anwendungsfälle (Use Cases)
- `src/border/domain/`: Domänenregeln und -konzepte
- `src/border/repositories/`: Datenzugriff
- `src/border/infrastructure/`: Konfiguration und technische Ressourcen
- `tests/`: Automatisierte Tests
- `sql/`: SQL-Skripte für zukünftige Schritte
- `docs/`: Dokumentation der Architektur und Regeln

## Aktueller Stand
I – Projektstruktur, Tabellen, Terminal-Menü und erster Test.
II - Anbindung an eine MySQL-Datenbank.

## Nächste Schritte
III – Implementierung von Python-Modellen, Repositories, Reisenden und Dokumenten mittels parametrisierter Abfragen und Operationen in MySQL.
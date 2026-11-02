# Teste de conexão com MySQL
import sys
from mysql.connector import Error
from fronteira.infrastructure.database import conectar

def main() -> int:
    connection = None
    try:
        connection = conectar()
        cursor = connection.cursor()
        cursor.execute("SELECT VERSION(), DATABASE(), CURRENT_USER()")
        version, database, user = cursor.fetchone()
        print("Conexão com MySQL estabelecida!")
        print(f"Versão: {version}")
        print(f"Banco: {database}")
        print(f"Usuário autenticado: {user}")
        cursor.close()
        return 0
    except (Error, RuntimeError, ValueError) as excecao:
        print(f"Falha na conexão: {excecao}")
        print("Confira serviço, .env e permissões do usuário.")
        return 1
    finally:
        if connection is not None and connection.is_connected():
            connection.close()

if __name__ == "__main__":
    sys.exit(main())
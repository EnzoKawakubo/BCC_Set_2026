"""Funções auxiliares para entrada de dados no Terminal."""

def solicitar_texto(mensagem: str) -> str:
    """Solicita um texto não vazio."""
    while True:
        valor = input(mensagem).strip()
        if valor:
            return valor
        print("O campo não pode ficar vazio.")
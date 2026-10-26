"""Ponto de entrada da aplicação."""

from fronteira.cli.menu import executar_menu


def main() -> None:
    """Inicia a interface de terminal."""
    try:
        executar_menu()
    except (KeyboardInterrupt):
        print("\nEncerrando o Controle de Fronteira. Volte logo!")
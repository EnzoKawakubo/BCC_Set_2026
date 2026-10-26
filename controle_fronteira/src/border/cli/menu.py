def executar_menu() -> None:
    """Exibe o menu principal até que o usuário escolha sair."""
    while True:
        print("\n" + "=" * 42)
        print("       B.F.R. BORDER CONTROL SYSTEM")
        print("       Posto 'Checkpoint Alfa'")
        print("=" * 42)
        print("1. Iniciar inspeção (em desenvolvimento)")
        print("2. Consultar viajante (em desenvolvimento)")
        print("3. Histórico de inspeções (em desenvolvimento)")
        print("4. Estatísticas do posto (em desenvolvimento)")
        print("0. Encerrar")
        escolha = input("\nSelecione uma opção: ").strip()

        if escolha == "0":
            print("Encerrando o Controle de Fronteira. Volte logo!")
            return
        if escolha in {"1", "2", "3", "4"}:
            print("Pedimos desculpas: Esta funcionalidade está temporariamente indisponível.")
        else:
            print("Opção inválida. Digite 0, 1, 2, 3 ou 4.")
"""Modelos do domínio. As entidades serão adicionadas conforme o projeto evoluir."""

from dataclasses import dataclass

@dataclass(frozen=True)
class TravelerSummary:
    """Representação mínima de um viajante para exemplos e testes."""

    id: int
    full_name: str
    # Adicionar depois
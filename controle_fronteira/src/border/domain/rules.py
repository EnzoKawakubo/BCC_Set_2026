"""Regras de domínio independentes de banco e interface."""

from datetime import date

def document_valid_on_date(validade: date, data_inspecao: date) -> bool:
    """Retorna True se o documento ainda estiver válido na data consultada."""
    return validade >= data_inspecao
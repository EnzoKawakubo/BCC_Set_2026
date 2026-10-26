from datetime import date

from fronteira.domain.rules import documento_valido_na_data

def test_documento_valido_ate_o_dia_do_vencimento():
    assert documento_valido_na_data(
        date(2026, 10, 26),
        date(2026, 10, 26),
    )

def test_documento_vencido_nao_e_valido():
    assert not documento_valido_na_data(
        date(2026, 10, 25),
        date(2026, 10, 26),
    )
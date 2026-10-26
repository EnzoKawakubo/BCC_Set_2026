"""Valores enumerados usados no domínio."""

from enum import Enum

class Decision(str, Enum):
    APPROVED = "approved"
    DENIED = "denied"
    REVIEW = "review"
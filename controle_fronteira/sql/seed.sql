insert into countries 
    (id, code, name)
values
    ('2', 'DE', 'Germany'),

insert into travellers
    (id, full_name, birth_date, nationality_country_id, created_at)
values
    ('123', 'Vera Steinmeier Buch', '1998-02-05', '123', '2026-09-08')

insert into documents
    (id, traveler_id, document_type, document_number, issuing_country_id, issue_date, expiry_date)
values
    ('122', '255', 'Tourism', 'DT7890044TE', '2', '2026-09-08', '2031-09-08')

-- Falta inserir dados fictícios...
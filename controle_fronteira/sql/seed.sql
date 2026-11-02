use controle_fronteira;
-- Países reais (inclui com reconhecimento limitado). Dados fictícios. Pode ser executado novamente.
insert into countries (code, name) values
    ('DEU', 'Alemanha')
on duplicate key update name = values(name);

insert into agents (username, display_name, is_active) values
 ('demo.agent', 'Agente de Demonstração', true)
on duplicate key update display_name = values(display_name);

insert into travelers (full_name, birth_date, nationality_country_id)
select 'Milena Steinbach', '1995-04-12', id from countries where code='DEU'
and not exists (select 1 from travelers where full_name='Milena Steinbach');

insert into documents
 (traveler_id, document_type, document_number, issuing_country_id, issue_date, expiry_date)
select t.id, 'passport', 'DEU-P-10001', c.id, '2022-02-01', '2032-02-01'
from travelers t join countries c on c.code='DEU'
where t.full_name='Milena Steinbach'
and not exists (select 1 from documents d where d.issuing_country_id=c.id
 and d.document_type='passport' and d.document_number='DEU-P-10001');

insert into inspections (traveler_id, agent_id, decision, reason, inspected_at)
select t.id, a.id, 'approved',
-- documentos sem inconsistências neste cenário
 '2026-01-10 09:15:00'
from travelers t join agents a on a.username='demo.agent'
where t.full_name='Milena Steinbach'
and not exists (select 1 from inspections i where i.traveler_id=t.id
 and i.agent_id=a.id and i.inspected_at='2026-01-10 09:15:00');
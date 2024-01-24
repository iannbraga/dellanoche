# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Evento.create([
#     {
#         "nome_evento": "DELLA NO BLACKBIRD ",
#         "casa_de_show": "BLACKBIRD ",
#         "data_inicio": "2024-01-12",
#         "data_termino": "2024-01-13",
#         "hora_inicio": "2000-01-01T23:00:00.000Z",
#         "hora_termino": "2000-01-01T02:00:00.000Z",
#         "horas_tocadas": 3,
#         "minutos_tocados": 0,
#         "cache": 200.0,
#         "cover": 217.0,
#         "localizacao": "112 SUL",
#     },
#     {
#         "nome_evento": "DELLA NA NEO",
#         "casa_de_show": "NEOPOLITAN ",
#         "data_inicio": "2024-01-06",
#         "data_termino": "2024-01-07",
#         "hora_inicio": "2000-01-01T21:00:00.000Z",
#         "hora_termino": "2000-01-01T00:00:00.000Z",
#         "horas_tocadas": 3,
#         "minutos_tocados": 0,
#         "cache": 500.0,
#         "cover": 0,
#         "localizacao": "104 SUL",
#     },
#     {
#         "nome_evento": "GIG PRIVADA - BALADA PEDAGÓGICA (FORMATURA DO PAULO GUELPELI)",
#         "casa_de_show": "IVONETH BUFFET",
#         "data_inicio": "2024-03-02",
#         "data_termino": "2024-03-03",
#         "hora_inicio": "2000-01-01T20:00:00.000Z",
#         "hora_termino": "2000-01-01T02:00:00.000Z",
#         "horas_tocadas": 4,
#         "minutos_tocados": 0,
#         "cache": 700.0,
#         "cover": 0,
#         "localizacao": "112 SUL",
#     },
#     {
#         "nome_evento": "NÃO ERA AMOR ",
#         "casa_de_show": "LANTERNA ",
#         "data_inicio": "2024-02-03",
#         "data_termino": "2024-02-04",
#         "hora_inicio": "2000-01-01T22:00:00.000Z",
#         "hora_termino": "2000-01-01T01:00:00.000Z",
#         "horas_tocadas": 2,
#         "minutos_tocados": 0,
#         "cache": 300.0,
#         "cover": 0,
#         "localizacao": "104 Sul",
#     },
#     {
#         "nome_evento": "DELLA NA NEO",
#         "casa_de_show": "Neopolitan ",
#         "data_inicio": "2024-01-18",
#         "data_termino": "2024-01-18",
#         "hora_inicio": "2000-01-01T19:11:00.000Z",
#         "hora_termino": "2000-01-01T19:11:00.000Z",
#         "horas_tocadas": 2,
#         "minutos_tocados": 0,
#         "cache": 500.0,
#         "cover": 0,
#         "localizacao": "104 Sul",
#     }
# ])

Evento.create([
    {
        "id": 8,
        "nome_evento": "DELLA NA PRAIA",
        "casa_de_show": "",
        "data_inicio": "2024-02-11",
        "data_termino": "2024-02-11",
        "hora_inicio": "2000-01-01T18:00:00.000Z",
        "hora_termino": "2000-01-01T19:00:00.000Z",
        "horas_tocadas": 1,
        "cache": "150.0",
        "cover": "null",
        "localizacao": "PRAIA DA GRACIOSA ",
        "created_at": "2024-01-22T07:22:55.503Z",
        "updated_at": "2024-01-22T07:22:55.503Z",
    },
    {
        "id": 7,
        "nome_evento": "DELLA NA NEO",
        "casa_de_show": "",
        "data_inicio": "2024-02-17",
        "data_termino": "2024-02-18",
        "hora_inicio": "2000-01-01T21:00:00.000Z",
        "hora_termino": "2000-01-01T00:00:00.000Z",
        "horas_tocadas": 3,
        "cache": "500.0",
        "cover": "null",
        "localizacao": "104 SUL",
        "created_at": "2024-01-22T07:19:34.797Z",
        "updated_at": "2024-01-22T07:19:34.797Z",
    },
    {
        "id": 6,
        "nome_evento": "DELLA NA NEO",
        "casa_de_show": "NEOPOLITAN ",
        "data_inicio": "2024-02-10",
        "data_termino": "2024-02-11",
        "hora_inicio": "2000-01-01T21:00:00.000Z",
        "hora_termino": "2000-01-01T00:00:00.000Z",
        "horas_tocadas": 3,
        "cache": "500.0",
        "cover": "null",
        "localizacao": "",
        "created_at": "2024-01-22T07:18:35.990Z",
        "updated_at": "2024-01-22T07:46:37.999Z",
    },
    {
        "id": 5,
        "nome_evento": "DELLA NO BLACKBIRD",
        "casa_de_show": "BLACKBIRD",
        "data_inicio": "2024-01-12",
        "data_termino": "2024-01-13",
        "hora_inicio": "2000-01-01T23:00:00.000Z",
        "hora_termino": "2000-01-01T02:00:00.000Z",
        "horas_tocadas": 3,
        "cache": "200.0",
        "cover": "217.0",
        "localizacao": "112 Sul",
        "created_at": "2024-01-18T20:57:31.002Z",
        "updated_at": "2024-01-19T05:09:49.548Z",
    },
    {
        "id": 4,
        "nome_evento": "DELLA NA NEO",
        "casa_de_show": "NEOPOLITAN",
        "data_inicio": "2024-01-06",
        "data_termino": "2024-01-07",
        "hora_inicio": "2000-01-01T21:00:00.000Z",
        "hora_termino": "2000-01-01T00:00:00.000Z",
        "horas_tocadas": 3,
        "cache": "500.0",
        "cover": "0.0",
        "localizacao": "104 Sul",
        "created_at": "2024-01-18T20:56:41.541Z",
        "updated_at": "2024-01-18T20:56:41.541Z",
    },
    {
        "id": 3,
        "nome_evento": "GIG PRIVADA",
        "casa_de_show": "IVONETH BUFFET",
        "data_inicio": "2024-03-02",
        "data_termino": "2024-03-03",
        "hora_inicio": "2000-01-01T20:00:00.000Z",
        "hora_termino": "2000-01-01T02:00:00.000Z",
        "horas_tocadas": 4,
        "cache": "700.0",
        "cover": "0.0",
        "localizacao": "112 Sul",
        "created_at": "2024-01-18T20:55:15.657Z",
        "updated_at": "2024-01-19T05:03:03.898Z",
    },
    {
        "id": 2,
        "nome_evento": "NÃO ERA AMOR",
        "casa_de_show": "LANTERNA",
        "data_inicio": "2024-02-03",
        "data_termino": "2024-02-04",
        "hora_inicio": "2000-01-01T22:00:00.000Z",
        "hora_termino": "2000-01-01T01:00:00.000Z",
        "horas_tocadas": 2,
        "cache": "300.0",
        "cover": "0.0",
        "localizacao": "104 Sul",
        "created_at": "2024-01-18T20:54:15.044Z",
        "updated_at": "2024-01-18T20:54:15.044Z",
    },
    {
        "id": 1,
        "nome_evento": "DELLA NA NEO",
        "casa_de_show": "Neopolitan",
        "data_inicio": "2024-01-27",
        "data_termino": "2024-01-28",
        "hora_inicio": "2000-01-01T21:00:00.000Z",
        "hora_termino": "2000-01-01T00:00:00.000Z",
        "horas_tocadas": 3,
        "cache": "500.0",
        "cover": "0.0",
        "localizacao": "104 Sul",
        "created_at": "2024-01-18T20:52:42.272Z",
        "updated_at": "2024-01-19T05:04:53.306Z",
    }
])
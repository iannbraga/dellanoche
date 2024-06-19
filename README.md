### README

* Ruby version:
   - 3.2.2

* System dependencies
   - Rails 7.0.8

* Configuration

* Database creation
  ```bash
  docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5434:5432 -d postgres
  rails db:create db:migrate
  ```

* Database initialization
  ```bash
  rails db:seed
  ```

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

---

A aplicação permite que usuários gerenciem eventos, locais, contatos e informações financeiras de maneira eficiente. Aqui está o contexto detalhado da aplicação:

### Contexto da Aplicação

#### Objetivo:
A aplicação tem como objetivo principal fornecer uma plataforma para DJs e outros perfis de usuários (como administradores e desenvolvedores) gerenciarem eventos musicais, locais onde os eventos ocorrem, contatos importantes e informações financeiras associadas a esses eventos.

A aplicação visa proporcionar uma plataforma robusta e eficiente para DJs gerenciarem todos os aspectos relacionados aos seus eventos, desde a criação e gestão dos eventos até o controle financeiro detalhado, além de facilitar a gestão de locais e contatos associados.

#### Usuários:
1. **DJs**: Gerenciam seus eventos, acompanham os ganhos (cache e covert) e mantêm informações de locais e contatos.
2. **Administradores**: Têm acesso a todas as funcionalidades para gerenciar usuários, eventos e locais.
3. **Desenvolvedores**: Podem acessar funcionalidades específicas de desenvolvimento e manutenção da plataforma.

### Funcionalidades Principais:

#### Gestão de Usuários:
- **Cadastro de Usuários**: Registro de novos usuários com informações básicas como email, senha, nome, sobrenome, ativo e perfil.
- **Autenticação**: Login e logout dos usuários, utilizando email e senha.
- **Perfis de Usuário**: Além dos perfis básicos (DJ, administrador, desenvolvedor), considerar permissões granulares para diferentes funcionalidades da aplicação.

#### Gestão de Eventos:
- **Criação de Eventos**: DJs podem criar e gerenciar eventos, especificando nome, descrição, data e hora de início e término, horas tocadas, cache e covert.
- **Atribuição de Locais**: Associar cada evento a um local específico onde o evento será realizado.
- **Calendário de Eventos**: Visualização de eventos em um calendário com opção de filtragem por data, localização, DJ responsável, etc.
- **Reservas de Eventos**: Capacidade de pré-reservar eventos com confirmação posterior.

#### Gestão Financeira:
- **Detalhamento de Ganhos**: Além dos campos de cache e covert, incluir detalhes adicionais como despesas associadas ao evento.
- **Relatórios Financeiros Avançados**: Gerar relatórios detalhados com análise de lucros por evento, comparação de desempenho ao longo do tempo, previsões financeiras baseadas em eventos futuros, entre outros.

#### Gestão de Locais:
- **Cadastro de Locais**: Adicionar novos locais, especificando nome, descrição, localização e endereço.
- **Endereços e Contatos**: Gerenciar endereços completos e contatos associados aos locais.
- **Integração de Mapas**: Visualização dos locais em um mapa interativo para facilitar a seleção e geolocalização.
- **Avaliação de Locais**: Capacidade de deixar avaliações e comentários sobre locais utilizados anteriormente.

#### Gestão de Endereços:
- **Cadastro de Endereços**: Adicionar endereços completos para locais, incluindo logradouro, número, bairro, cidade, estado e CEP.
- **Associação a Cidades**: Cada endereço deve ser associado a uma cidade específica.

#### Gestão de Contatos:
- **Cadastro de Contatos**: Adicionar contatos importantes para cada local, incluindo nome do contato e telefone.
- **Gestão de Telefones**: Registrar e associar números de telefone aos contatos.
- **Importação de Contatos**: Permitir a importação de contatos de outras plataformas (por exemplo, CSV, Google Contacts).
- **Notificações de Contato**: Configuração de notificações para lembrar de contatos importantes antes de eventos específicos.

#### Gestão de Cidades e Estados:
- **Cadastro de Cidades**: Adicionar novas cidades com nome e sigla, associando cada cidade a um estado.
- **Cadastro de Estados**: Adicionar novos estados com nome e sigla.

### Relacionamentos e Interações:
1. **Usuários e Eventos**: Cada evento é gerenciado por um usuário (DJ).
2. **Eventos e Locais**: Cada evento ocorre em um local específico.
3. **Locais e Endereços**: Cada local possui um endereço único.
4. **Locais e Contatos**: Cada local pode ter vários contatos.
5. **Contatos e Telefones**: Cada contato tem um telefone associado.
6. **Endereços e Cidades**: Cada endereço pertence a uma cidade.
7. **Cidades e Estados**: Cada cidade pertence a um estado.

### Diagrama de Casos de Uso:

1. **Usuário (DJ)**:
   - Criar evento
   - Editar evento
   - Excluir evento
   - Visualizar eventos
   - Visualizar ganhos (cache e covert)
   - Gerenciar locais
   - Gerenciar contatos

2. **Administrador**:
   - Gerenciar usuários
   - Gerenciar eventos
   - Gerenciar locais
   - Gerenciar endereços
   - Gerenciar contatos
   - Gerenciar cidades e estados

3. **Desenvolvedor**:
   - Acesso a funcionalidades de manutenção e desenvolvimento da plataforma

### Fluxo de Trabalho:

1. **Cadastro e Login**:
   - O usuário se cadastra ou faz login na plataforma.
   - Baseado no perfil, o usuário tem acesso a diferentes funcionalidades.

2. **Criação e Gestão de Eventos**:
   - O DJ cria um novo evento, fornecendo todas as informações necessárias.
   - O evento é associado a um local existente ou um novo local é cadastrado.
   - O DJ pode visualizar e editar eventos futuros e passados.

3. **Gestão de Locais**:
   - O DJ ou administrador cadastra novos locais, especificando o endereço e contatos associados.
   - Locais existentes podem ser editados ou removidos.

4. **Gestão de Endereços e Contatos**:
   - Endereços completos são cadastrados para novos locais.
   - Contatos importantes para cada local são registrados com seus telefones.

5. **Relatórios e Financeiro**:
   - O DJ pode visualizar relatórios financeiros com ganhos (cache e covert) por evento.
   - Administradores podem gerar relatórios globais de eventos e locais.

### Exemplo de Diagrama ER Detalhado:

```
Usuarios (id, email, senha, nome, sobrenome, ativo, perfil_id)
   |
   |---< Eventos (id, nome, descricao, data_hora_inicio, data_hora_termino, horas_tocadas, cache, covert, local_id, usuario_id)
         |
         |---< Locais (id, nome, descricao, localizacao, endereco_id)
               |
               |---< Contatos (id, nome, telefone_id, local_id)
               |    |
               |    |--- Telefones (id, ddd, numero)
               |
               |--- Enderecos (id, logradouro, numero, bairro, cidade_id, cep)
                     |
                     |--- Cidades (id, nome, sigla, estado_id)
                           |
                           |--- Estados (id, nome, sigla)
```

### Explicação da Modelagem:

1. **Entidades Principais**: As entidades como `Usuarios`, `Eventos`, `Locais`, `Enderecos`, `Contatos` e `Telefones` são essenciais para gerenciar todos os aspectos dos eventos e locais associados.

2. **Relacionamentos**: Os relacionamentos entre as entidades estão bem definidos, o que permite uma representação clara das interações entre usuários, eventos, locais, endereços e contatos.

3. **Funcionalidades Suportadas**: A modelagem permite suportar todas as funcionalidades principais mencionadas, como criação e gestão de eventos, controle financeiro detalhado, gerenciamento de locais e contatos, além da gestão de usuários com diferentes perfis e permissões.

4. **Diagrama ER**: O diagrama entidade-relacionamento detalhado fornece uma representação visual clara dos relacion

amentos entre as entidades, facilitando o entendimento da estrutura da base de dados.

---

Esse README foi refinado e atualizado com as últimas alterações e detalhes da aplicação.
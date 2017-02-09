json.extract! disciplina, :id, :descricao, :unidade_id, :sigla, :created_at, :updated_at
json.url disciplina_url(disciplina, format: :json)
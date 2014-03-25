json.array!(@coding_langs) do |coding_lang|
  json.extract! coding_lang, :id, :name, :description, :project_id
  json.url coding_lang_url(coding_lang, format: :json)
end

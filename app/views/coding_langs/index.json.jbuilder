json.array!(@coding_langs) do |coding_lang|
  json.extract! coding_lang, :id, :name, :description
  json.url coding_lang_url(coding_lang, format: :json)
end

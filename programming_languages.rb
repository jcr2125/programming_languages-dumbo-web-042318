def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |l_style, languages|
    languages.each do |language, type|
      if !new_hash.has_key?(language)
        new_hash[language] = type.merge({style: [l_style]})
      else
        new_hash[language][:style] << l_style
      end
    end
  end
  new_hash
end

# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
      
      when 'Show Areas'
        areas_path
      
      when 'Areas'
        areas_path

      when 'Area'
        root_path
      
      when 'Disciplina'
        disciplinas_path
      
      when 'New Disciplina'
        new_disciplina_path
        
      when 'Show Disciplina'
        disciplinas_path(Disciplina.last)

      when 'Unidade'
        unidades_path
      
      when 'New Unidade'
        new_unidade_path

      when 'Show Unidade'
        unidades_path(Unidade.last)

      when 'New User'
        new_user_registration_path

      when 'Login'
        new_user_session_path
        
      when 'Monitoria'
        monitoria_path

       when 'New Monitoria'
        new_unidade_path

      when 'Show Monitoria'
        monitoria_path(Monitoria.last)

      when /^the home\s?page$/
      '/'




    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)

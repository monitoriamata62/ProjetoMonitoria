# language: pt
# IMPORTANT: This file is generated by cucumber-rails - edit at your own peril.
# It is recommended to regenerate this file in the future when you upgrade to a 
# newer version of cucumber-rails. Consider adding your own code to a new file 
# instead of editing this one. Cucumber will automatically load all features/**/*.rb
# files.


require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

# Commonly used webrat steps
# http://github.com/brynary/webrat

Dado /^que eu estou na página "(.+)"$/ do |page_name|
  visit path_to(page_name)
end

Quando /^eu for para a página "(.+)"$/ do |page_name|
  visit path_to(page_name)
end

Quando /^eu (?:pressionar o|clicar no) botão "([^\"]*)"$/ do |button|
  click_button(button)
end

Quando /^eu (?:seguir o|clicar no) link "([^\"]*)"$/ do |link|
  click_link(link)
end

Quando /^eu seguir para a página "([^\"]*)" em "([^\"]*)"$/ do |link, parent|
  click_link_within(parent, link)
end

Quando /^eu preencher [oa] "([^\"]*)" com "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Quando /^eu preencher o campo "([^\"]*)" com "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

# Use this to fill in an entire form with data from a table. Example:
#
#   Quando I fill in the following:
#     | Account Number | 5002       |
#     | Expiry date    | 2009-11-01 |
#     | Note           | Nice guy   |
#     | Wants Email?   |            |
#
# TODO: Add support for checkbox, select og option
# based on naming conventions.
#
Quando /^eu preencher os campos com:$/ do |fields|
  fields.rows_hash.each do |name, value|
    step %{eu preencher o campo "#{name}" com "#{value}"}
  end
end

Quando /^eu selecionar "([^\"]*)" no campo "([^\"]*)"$/ do |value, field|
  select(value, :from => field)
end

# Use this step in conjunction with Rail's datetime_select helper. For example:
# Quando I select "December 25, 2008 10:00" as the date and time
Quando /^eu selecionar a data e hora "([^\"]*)"$/ do |time|
  select_datetime(time)
end

# Use this step when using multiple datetime_select helpers on a page or
# you want to specify which datetime to select. Given the following view:
#   <%= f.label :preferred %><br />
#   <%= f.datetime_select :preferred %>
#   <%= f.label :alternative %><br />
#   <%= f.datetime_select :alternative %>
# The following steps would fill out the form:
# Quando I select "November 23, 2004 11:20" as the "Preferred" date and time
# And I select "November 25, 2004 10:30" as the "Alternative" date and time
Quando /^eu selecionar a data e hora "([^\"]*)" no campo "([^\"]*)"$/ do |datetime, datetime_label|
  select_datetime(datetime, :from => datetime_label)
end

# Use this step in conjunction with Rail's time_select helper. For example:
# Quando I select "2:20PM" as the time
# Note: Rail's default time helper provides 24-hour time-- not 12 hour time. Webrat
# will convert the 2:20PM to 14:20 and then select it.
Quando /^eu selecionar o horário "([^\"]*)"$/ do |time|
  select_time(time)
end

# Use this step when using multiple time_select helpers on a page or you want to
# specify the name of the time on the form.  For example:
# Quando I select "7:30AM" as the "Gym" time
Quando /^eu selecionar o horário "([^\"]*)" no campo "([^\"]*)"$/ do |time, time_label|
  select_time(time, :from => time_label)
end

# Use this step in conjunction with Rail's date_select helper.  For example:
# Quando I select "February 20, 1981" as the date
Quando /^eu selecionar a data "([^\"]*)"$/ do |date|
  select_date(date)
end

# Use this step when using multiple date_select helpers on one page or
# you want to specify the name of the date on the form. For example:
# Quando I select "April 26, 1982" as the "Date of Birth" date
Quando /^eu selecionar a data "([^\"]*)" no campo "([^\"]*)"$/ do |date, date_label|
  select_date(date, :from => date_label)
end

Quando /^eu marcar o campo "([^\"]*)"$/ do |field|
  check(field)
end

Quando /^eu desmarcar o campo "([^\"]*)"$/ do |field|
  uncheck(field)
end

Quando /^eu selecionar "([^\"]*)"$/ do |field|
  choose(field)
end

# Adds support for validates_attachment_content_type. Without the mime-type getting
# passed to attach_file() you will get a "Photo file is not one of the allowed file types."
# error message 
Quando /^eu anexar o arquivo "([^\"]*)" no campo "([^\"]*)"$/ do |path, field|
  type = path.split(".")[1]

  case type
  when "jpg"
    type = "image/jpg" 
  when "jpeg"
    type = "image/jpeg" 
  when "png"
    type = "image/png" 
  when "gif"
    type = "image/gif"
  end
  
  attach_file(field, path, type)
end

Então /^eu devo ver "([^\"]*)"$/ do |text|
  if defined?(Spec::Rails::Matchers)
    response.should contain(text)
  else
    assert page.has_content?(text)
  end
end

Então /^eu devo ver "([^\"]*)" dentro de "([^\"]*)"$/ do |text, selector|
  within(selector) do |content|
    if defined?(Spec::Rails::Matchers)
      content.should contain(text)
    else
      assert content.include?(text)
    end
  end
end

Então /^eu devo ver \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)
  if defined?(Spec::Rails::Matchers)
    response.should contain(regexp)
  else
    assert page =~ regexp
  end
end

Então /^eu devo ver \/([^\/]*)\/ dentro de "([^\"]*)"$/ do |regexp, selector|
  within(selector) do |content|
    regexp = Regexp.new(regexp)
    if defined?(Spec::Rails::Matchers)
      content.should contain(regexp)
    else
      assert content =~ regexp
    end
  end
end

Então /^eu não devo ver "([^\"]*)"$/ do |text|
  if defined?(Spec::Rails::Matchers)
    response.should_not contain(text)
  else
    assert !page.has_content?(text)
  end
end

Então /^eu não devo ver "([^\"]*)" dentro de "([^\"]*)"$/ do |text, selector|
  within(selector) do |content|
    if defined?(Spec::Rails::Matchers)
        content.should_not contain(text)
    else
        assert !content.include?(text)
    end
  end
end

Então /^eu não devo ver \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)
  if defined?(Spec::Rails::Matchers)
    response.should_not contain(regexp)
  else
    assert_not content =~ regexp
  end
end

Então /^eu não devo ver \/([^\/]*)\/ dentro de "([^\"]*)"$/ do |regexp, selector|
  within(selector) do |content|
    regexp = Regexp.new(regexp)
    if defined?(Spec::Rails::Matchers)
      content.should_not contain(regexp)
    else
      assert content =~ regexp
    end
  end
end

Então /^o campo "([^\"]*)" deve conter "([^\"]*)"$/ do |field, value|
  if defined?(Spec::Rails::Matchers)
    field_labeled(field).value.should =~ /#{value}/
  else
    assert_match(/#{value}/, field_labeled(field).value)
  end
end

Então /^o campo "([^\"]*)" não deve conter "([^\"]*)"$/ do |field, value|
  if defined?(Spec::Rails::Matchers)
    field_labeled(field).value.should_not =~ /#{value}/
  else
    assert_no_match(/#{value}/, field_labeled(field).value)
  end
end

Então /^o checkbox "([^\"]*)" deve estar marcado$/ do |label|
  if defined?(Spec::Rails::Matchers)
    field_labeled(label).should be_checked
  else
    assert field_labeled(label).checked?
  end
end

Então /^o checkbox "([^\"]*)" não deve estar marcado$/ do |label|
  if defined?(Spec::Rails::Matchers)
    field_labeled(label).should_not be_checked
  else
    assert !field_labeled(label).checked?
  end
end

Então /^eu devo (?:estar na|ir para a) página "(.+)"$/ do |page_name|
  if defined?(Spec::Rails::Matchers)
    URI.parse(current_url).path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), URI.parse(current_url).path
  end
end

Então /^a URL deve conter "(.+)"$/ do |prefixo|
  assert_match /#{prefixo}/, URI.parse(current_url).path
end

Então /^mostre-me a página$/ do
  save_and_open_page
end

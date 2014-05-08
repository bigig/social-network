module UsersHelper

  def pretty field_label, field
    content_tag :div,
    content_tag(:span, whom(field_label), class: 'whom') + ' ' +
      content_tag(:span, field, class: 'actually-field')
  end

  private

  def whom field
    if current_user == @user
      "Your #{field}:"
    else
      "His #{field}:"
    end
  end
end

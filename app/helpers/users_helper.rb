module UsersHelper

  def pretty field_label, field
    content_tag :table,
    content_tag(:td, whom(field_label), class: 'whom') + ' ' +
      content_tag(:td, field, class: 'actually-field'), class: 'table table-hover'
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

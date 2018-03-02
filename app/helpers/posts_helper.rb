module PostsHelper
  def status_label status
    status_span_generator status
  end

  private

  def status_span_generator status
  case status
    when 'submitted'
      content_tag(:span, status, class: 'label label-primary') # content tag will generate stuff
    when 'approved'
      content_tag(:span, status, class: 'label label-success')
    when 'rejected'
      content_tag(:span, status, class: 'label label-danger')
    end
  end
end

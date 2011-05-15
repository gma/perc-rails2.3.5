module WorksHelper
  def render_table_header(instrument, number = nil)
    method = number.nil? ? instrument : "#{instrument}_#{number}?"
    if @workdetail.send(method)
      "<th>#{instrument.capitalize} #{number || 1}</th>".html_safe
    end
  end

  def render_table_cell(workdetail, instrument, number = nil)
    method = number.nil? ? instrument : "#{instrument}_#{number}"
    data = workdetail.send(method)
    if data.present?
      "<td>#{data}</td>".html_safe
    end
  end
end

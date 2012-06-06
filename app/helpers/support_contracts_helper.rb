module SupportContractsHelper
  def expiry(date)
    if date > Date.today
      "#{time_ago_in_words(date)} from now"
    elsif date <= Date.today
      "#{time_ago_in_words(date)} ago"
    else
      "Unknown"
    end
  end
end
module ApplicationHelper
  def random_quote
    quotes = [
      "The earth has music for those who listen.",
      "In every walk with nature, one receives far more than he seeks.",
      "Look deep into nature, and then you will understand everything better.",
      "Adopt the pace of nature: her secret is patience.",
      "The mountains are calling, and I must go."
    ]
    quotes.sample
  end
end

class Ranking
  @rank = 0
  @player = ''
  @revenue = ''
  @pct_in_use = 0

  attr_reader :rank

  attr_writer :rank

  attr_reader :player

  attr_writer :player

  attr_reader :revenue

  def revenue=(v)
    @revenue = ActionController::Base.helpers.number_to_currency(v, precision: 0)
  end

  attr_reader :pct_in_use

  attr_writer :pct_in_use
end

class Joukkue
  require './pelaaja.rb'

  def initialize(nimi)
    @nimi = nimi
    @pelaajat = []
  end

  def lisaa_pelaaja(pelaaja)
    @pelaajat << pelaaja
  end

  def maaleja_yhteensa
    @pelaajat.map{ |p| p.maaleja}.inject(0, :+)
  end

  def paras_maalintekija
    @pelaajat.sort_by!{|obj| obj.maaleja}.last
  end

  def to_s
    puts maaleja_yhteensa
    "#{@nimi}, pelaajia #{@pelaajat.length}, maaleja yhteensä #{maaleja_yhteensa}"
  end
end

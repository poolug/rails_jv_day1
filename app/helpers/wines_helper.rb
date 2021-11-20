module WinesHelper
  # se crea método para hacer el select de las cepas, en orden asc
  def strains_for_select
    Strain.order(:name).collect { |g| [g.name, g.id] }
  end
end

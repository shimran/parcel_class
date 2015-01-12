class Parcel

  define_method (:initialize) do |length,width,height,weight|
    @length= length
    @width= width
    @height= height
    @weight=weight
  end

  define_method (:volume) do
    volume= @length*@width*@height
  end

  define_method(:cost_to_ship) do
    min_charge=8 #Min charge for first ten pounds
    ship_cost= @weight

    if ship_cost <= 5
      min_charge
    else
      ship_cost
    end

  end


end #End class

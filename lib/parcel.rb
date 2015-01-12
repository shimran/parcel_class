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
    volume_cost = @length*@width*@height*0.1

    if @weight <= 5
      total = min_charge
    else
      total = @weight*volume_cost
    end



  end


end #End class

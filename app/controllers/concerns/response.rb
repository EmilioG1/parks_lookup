module Response

  def json_response(object, status = :ok)
    render json: object.as_json(only: [:name, :location]), status: status
  end
end
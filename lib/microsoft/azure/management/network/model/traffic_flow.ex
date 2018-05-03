# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.TrafficFlow do
  @moduledoc """
  Class representing a Traffic Manager HeatMap traffic flow properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"sourceIp",
    :"latitude",
    :"longitude",
    :"queryExperiences"
  ]

  @type t :: %__MODULE__{
    :"sourceIp" => String.t,
    :"latitude" => float(),
    :"longitude" => float(),
    :"queryExperiences" => [QueryExperience]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.TrafficFlow do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"queryExperiences", :list, Microsoft.Azure.Management.Network.Model.QueryExperience, options)
  end
end

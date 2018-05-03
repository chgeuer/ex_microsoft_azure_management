# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.HeatMapProperties do
  @moduledoc """
  Class representing a Traffic Manager HeatMap properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"startTime",
    :"endTime",
    :"endpoints",
    :"trafficFlows"
  ]

  @type t :: %__MODULE__{
    :"startTime" => DateTime.t,
    :"endTime" => DateTime.t,
    :"endpoints" => [HeatMapEndpoint],
    :"trafficFlows" => [TrafficFlow]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.HeatMapProperties do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"endpoints", :list, Microsoft.Azure.Management.Network.Model.HeatMapEndpoint, options)
    |> deserialize(:"trafficFlows", :list, Microsoft.Azure.Management.Network.Model.TrafficFlow, options)
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.RouteFilterPropertiesFormat do
  @moduledoc """
  Route Filter Resource
  """

  @derive [Poison.Encoder]
  defstruct [
    :"rules",
    :"peerings",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"rules" => [RouteFilterRule],
    :"peerings" => [ExpressRouteCircuitPeering],
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.RouteFilterPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"rules", :list, Microsoft.Azure.Management.Network.Model.RouteFilterRule, options)
    |> deserialize(:"peerings", :list, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitPeering, options)
  end
end


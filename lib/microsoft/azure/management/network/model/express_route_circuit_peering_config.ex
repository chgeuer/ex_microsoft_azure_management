# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitPeeringConfig do
  @moduledoc """
  Specifies the peering configuration.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"advertisedPublicPrefixes",
    :"advertisedCommunities",
    :"advertisedPublicPrefixesState",
    :"legacyMode",
    :"customerASN",
    :"routingRegistryName"
  ]

  @type t :: %__MODULE__{
    :"advertisedPublicPrefixes" => [String.t],
    :"advertisedCommunities" => [String.t],
    :"advertisedPublicPrefixesState" => String.t,
    :"legacyMode" => integer(),
    :"customerASN" => integer(),
    :"routingRegistryName" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitPeeringConfig do
  def decode(value, _options) do
    value
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitPeeringPropertiesFormat do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"peeringType",
    :"state",
    :"azureASN",
    :"peerASN",
    :"primaryPeerAddressPrefix",
    :"secondaryPeerAddressPrefix",
    :"primaryAzurePort",
    :"secondaryAzurePort",
    :"sharedKey",
    :"vlanId",
    :"microsoftPeeringConfig",
    :"stats",
    :"provisioningState",
    :"gatewayManagerEtag",
    :"lastModifiedBy",
    :"routeFilter",
    :"ipv6PeeringConfig",
    :"connections"
  ]

  @type t :: %__MODULE__{
    :"peeringType" => ExpressRoutePeeringType,
    :"state" => ExpressRoutePeeringState,
    :"azureASN" => integer(),
    :"peerASN" => integer(),
    :"primaryPeerAddressPrefix" => String.t,
    :"secondaryPeerAddressPrefix" => String.t,
    :"primaryAzurePort" => String.t,
    :"secondaryAzurePort" => String.t,
    :"sharedKey" => String.t,
    :"vlanId" => integer(),
    :"microsoftPeeringConfig" => ExpressRouteCircuitPeeringConfig,
    :"stats" => ExpressRouteCircuitStats,
    :"provisioningState" => String.t,
    :"gatewayManagerEtag" => String.t,
    :"lastModifiedBy" => String.t,
    :"routeFilter" => RouteFilter,
    :"ipv6PeeringConfig" => Ipv6ExpressRouteCircuitPeeringConfig,
    :"connections" => [ExpressRouteCircuitConnection]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitPeeringPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"peeringType", :struct, Microsoft.Azure.Management.Network.Model.ExpressRoutePeeringType, options)
    |> deserialize(:"state", :struct, Microsoft.Azure.Management.Network.Model.ExpressRoutePeeringState, options)
    |> deserialize(:"microsoftPeeringConfig", :struct, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitPeeringConfig, options)
    |> deserialize(:"stats", :struct, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitStats, options)
    |> deserialize(:"routeFilter", :struct, Microsoft.Azure.Management.Network.Model.RouteFilter, options)
    |> deserialize(:"ipv6PeeringConfig", :struct, Microsoft.Azure.Management.Network.Model.Ipv6ExpressRouteCircuitPeeringConfig, options)
    |> deserialize(:"connections", :list, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitConnection, options)
  end
end

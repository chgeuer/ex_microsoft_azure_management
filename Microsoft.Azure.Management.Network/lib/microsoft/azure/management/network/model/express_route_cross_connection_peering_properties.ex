# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeeringProperties do
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
    :"provisioningState",
    :"gatewayManagerEtag",
    :"lastModifiedBy",
    :"ipv6PeeringConfig"
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
    :"provisioningState" => String.t,
    :"gatewayManagerEtag" => String.t,
    :"lastModifiedBy" => String.t,
    :"ipv6PeeringConfig" => Ipv6ExpressRouteCircuitPeeringConfig
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeeringProperties do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"peeringType", :struct, Microsoft.Azure.Management.Network.Model.ExpressRoutePeeringType, options)
    |> deserialize(:"state", :struct, Microsoft.Azure.Management.Network.Model.ExpressRoutePeeringState, options)
    |> deserialize(:"microsoftPeeringConfig", :struct, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitPeeringConfig, options)
    |> deserialize(:"ipv6PeeringConfig", :struct, Microsoft.Azure.Management.Network.Model.Ipv6ExpressRouteCircuitPeeringConfig, options)
  end
end


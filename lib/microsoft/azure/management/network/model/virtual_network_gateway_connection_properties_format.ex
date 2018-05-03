# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnectionPropertiesFormat do
  @moduledoc """
  VirtualNetworkGatewayConnection properties
  """

  @derive [Poison.Encoder]
  defstruct [
    :"authorizationKey",
    :"virtualNetworkGateway1",
    :"virtualNetworkGateway2",
    :"localNetworkGateway2",
    :"connectionType",
    :"routingWeight",
    :"sharedKey",
    :"connectionStatus",
    :"tunnelConnectionStatus",
    :"egressBytesTransferred",
    :"ingressBytesTransferred",
    :"peer",
    :"enableBgp",
    :"usePolicyBasedTrafficSelectors",
    :"ipsecPolicies",
    :"resourceGuid",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"authorizationKey" => String.t,
    :"virtualNetworkGateway1" => VirtualNetworkGateway,
    :"virtualNetworkGateway2" => VirtualNetworkGateway,
    :"localNetworkGateway2" => LocalNetworkGateway,
    :"connectionType" => String.t,
    :"routingWeight" => integer(),
    :"sharedKey" => String.t,
    :"connectionStatus" => String.t,
    :"tunnelConnectionStatus" => [TunnelConnectionHealth],
    :"egressBytesTransferred" => integer(),
    :"ingressBytesTransferred" => integer(),
    :"peer" => SubResource,
    :"enableBgp" => boolean(),
    :"usePolicyBasedTrafficSelectors" => boolean(),
    :"ipsecPolicies" => [IpsecPolicy],
    :"resourceGuid" => String.t,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnectionPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"virtualNetworkGateway1", :struct, Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway, options)
    |> deserialize(:"virtualNetworkGateway2", :struct, Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway, options)
    |> deserialize(:"localNetworkGateway2", :struct, Microsoft.Azure.Management.Network.Model.LocalNetworkGateway, options)
    |> deserialize(:"tunnelConnectionStatus", :list, Microsoft.Azure.Management.Network.Model.TunnelConnectionHealth, options)
    |> deserialize(:"peer", :struct, Microsoft.Azure.Management.Network.Model.SubResource, options)
    |> deserialize(:"ipsecPolicies", :list, Microsoft.Azure.Management.Network.Model.IpsecPolicy, options)
  end
end


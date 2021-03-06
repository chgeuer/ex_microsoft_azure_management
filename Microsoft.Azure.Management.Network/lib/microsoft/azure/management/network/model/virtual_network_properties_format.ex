# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.VirtualNetworkPropertiesFormat do
  @moduledoc """
  Properties of the virtual network.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"addressSpace",
    :"dhcpOptions",
    :"subnets",
    :"virtualNetworkPeerings",
    :"resourceGuid",
    :"provisioningState",
    :"enableDdosProtection",
    :"enableVmProtection",
    :"ddosProtectionPlan"
  ]

  @type t :: %__MODULE__{
    :"addressSpace" => AddressSpace,
    :"dhcpOptions" => DhcpOptions,
    :"subnets" => [Subnet],
    :"virtualNetworkPeerings" => [VirtualNetworkPeering],
    :"resourceGuid" => String.t,
    :"provisioningState" => String.t,
    :"enableDdosProtection" => boolean(),
    :"enableVmProtection" => boolean(),
    :"ddosProtectionPlan" => SubResource
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.VirtualNetworkPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"addressSpace", :struct, Microsoft.Azure.Management.Network.Model.AddressSpace, options)
    |> deserialize(:"dhcpOptions", :struct, Microsoft.Azure.Management.Network.Model.DhcpOptions, options)
    |> deserialize(:"subnets", :list, Microsoft.Azure.Management.Network.Model.Subnet, options)
    |> deserialize(:"virtualNetworkPeerings", :list, Microsoft.Azure.Management.Network.Model.VirtualNetworkPeering, options)
    |> deserialize(:"ddosProtectionPlan", :struct, Microsoft.Azure.Management.Network.Model.SubResource, options)
  end
end


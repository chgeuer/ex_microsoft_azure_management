# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayIpConfigurationPropertiesFormat do
  @moduledoc """
  Properties of VirtualNetworkGatewayIPConfiguration
  """

  @derive [Poison.Encoder]
  defstruct [
    :"privateIPAllocationMethod",
    :"subnet",
    :"publicIPAddress",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"privateIPAllocationMethod" => String.t,
    :"subnet" => SubResource,
    :"publicIPAddress" => SubResource,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayIpConfigurationPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"subnet", :struct, Microsoft.Azure.Management.Network.Model.SubResource, options)
    |> deserialize(:"publicIPAddress", :struct, Microsoft.Azure.Management.Network.Model.SubResource, options)
  end
end


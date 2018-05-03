# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.PublicIpAddressPropertiesFormat do
  @moduledoc """
  Public IP address properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"publicIPAllocationMethod",
    :"publicIPAddressVersion",
    :"ipConfiguration",
    :"dnsSettings",
    :"ipTags",
    :"ipAddress",
    :"idleTimeoutInMinutes",
    :"resourceGuid",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"publicIPAllocationMethod" => String.t,
    :"publicIPAddressVersion" => String.t,
    :"ipConfiguration" => IpConfiguration,
    :"dnsSettings" => PublicIpAddressDnsSettings,
    :"ipTags" => [IpTag],
    :"ipAddress" => String.t,
    :"idleTimeoutInMinutes" => integer(),
    :"resourceGuid" => String.t,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.PublicIpAddressPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ipConfiguration", :struct, Microsoft.Azure.Management.Network.Model.IpConfiguration, options)
    |> deserialize(:"dnsSettings", :struct, Microsoft.Azure.Management.Network.Model.PublicIpAddressDnsSettings, options)
    |> deserialize(:"ipTags", :list, Microsoft.Azure.Management.Network.Model.IpTag, options)
  end
end

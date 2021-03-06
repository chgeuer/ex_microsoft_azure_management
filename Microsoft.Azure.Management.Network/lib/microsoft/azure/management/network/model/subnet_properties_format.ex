# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.SubnetPropertiesFormat do
  @moduledoc """
  Properties of the subnet.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"addressPrefix",
    :"networkSecurityGroup",
    :"routeTable",
    :"serviceEndpoints",
    :"ipConfigurations",
    :"resourceNavigationLinks",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"addressPrefix" => String.t,
    :"networkSecurityGroup" => NetworkSecurityGroup,
    :"routeTable" => RouteTable,
    :"serviceEndpoints" => [ServiceEndpointPropertiesFormat],
    :"ipConfigurations" => [IpConfiguration],
    :"resourceNavigationLinks" => [ResourceNavigationLink],
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.SubnetPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"networkSecurityGroup", :struct, Microsoft.Azure.Management.Network.Model.NetworkSecurityGroup, options)
    |> deserialize(:"routeTable", :struct, Microsoft.Azure.Management.Network.Model.RouteTable, options)
    |> deserialize(:"serviceEndpoints", :list, Microsoft.Azure.Management.Network.Model.ServiceEndpointPropertiesFormat, options)
    |> deserialize(:"ipConfigurations", :list, Microsoft.Azure.Management.Network.Model.IpConfiguration, options)
    |> deserialize(:"resourceNavigationLinks", :list, Microsoft.Azure.Management.Network.Model.ResourceNavigationLink, options)
  end
end


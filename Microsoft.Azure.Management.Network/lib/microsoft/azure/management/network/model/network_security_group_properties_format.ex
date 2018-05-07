# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.NetworkSecurityGroupPropertiesFormat do
  @moduledoc """
  Network Security Group resource.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"securityRules",
    :"defaultSecurityRules",
    :"networkInterfaces",
    :"subnets",
    :"resourceGuid",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"securityRules" => [SecurityRule],
    :"defaultSecurityRules" => [SecurityRule],
    :"networkInterfaces" => [NetworkInterface],
    :"subnets" => [Subnet],
    :"resourceGuid" => String.t,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.NetworkSecurityGroupPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"securityRules", :list, Microsoft.Azure.Management.Network.Model.SecurityRule, options)
    |> deserialize(:"defaultSecurityRules", :list, Microsoft.Azure.Management.Network.Model.SecurityRule, options)
    |> deserialize(:"networkInterfaces", :list, Microsoft.Azure.Management.Network.Model.NetworkInterface, options)
    |> deserialize(:"subnets", :list, Microsoft.Azure.Management.Network.Model.Subnet, options)
  end
end

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.SecurityRuleAssociations do
  @moduledoc """
  All security rules associated with the network interface.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"networkInterfaceAssociation",
    :"subnetAssociation",
    :"defaultSecurityRules",
    :"effectiveSecurityRules"
  ]

  @type t :: %__MODULE__{
    :"networkInterfaceAssociation" => NetworkInterfaceAssociation,
    :"subnetAssociation" => SubnetAssociation,
    :"defaultSecurityRules" => [SecurityRule],
    :"effectiveSecurityRules" => [EffectiveNetworkSecurityRule]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.SecurityRuleAssociations do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"networkInterfaceAssociation", :struct, Microsoft.Azure.Management.Network.Model.NetworkInterfaceAssociation, options)
    |> deserialize(:"subnetAssociation", :struct, Microsoft.Azure.Management.Network.Model.SubnetAssociation, options)
    |> deserialize(:"defaultSecurityRules", :list, Microsoft.Azure.Management.Network.Model.SecurityRule, options)
    |> deserialize(:"effectiveSecurityRules", :list, Microsoft.Azure.Management.Network.Model.EffectiveNetworkSecurityRule, options)
  end
end


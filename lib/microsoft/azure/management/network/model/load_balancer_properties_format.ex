# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.LoadBalancerPropertiesFormat do
  @moduledoc """
  Properties of the load balancer.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"frontendIPConfigurations",
    :"backendAddressPools",
    :"loadBalancingRules",
    :"probes",
    :"inboundNatRules",
    :"inboundNatPools",
    :"outboundNatRules",
    :"resourceGuid",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"frontendIPConfigurations" => [FrontendIpConfiguration],
    :"backendAddressPools" => [BackendAddressPool],
    :"loadBalancingRules" => [LoadBalancingRule],
    :"probes" => [Probe],
    :"inboundNatRules" => [InboundNatRule],
    :"inboundNatPools" => [InboundNatPool],
    :"outboundNatRules" => [OutboundNatRule],
    :"resourceGuid" => String.t,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.LoadBalancerPropertiesFormat do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"frontendIPConfigurations", :list, Microsoft.Azure.Management.Network.Model.FrontendIpConfiguration, options)
    |> deserialize(:"backendAddressPools", :list, Microsoft.Azure.Management.Network.Model.BackendAddressPool, options)
    |> deserialize(:"loadBalancingRules", :list, Microsoft.Azure.Management.Network.Model.LoadBalancingRule, options)
    |> deserialize(:"probes", :list, Microsoft.Azure.Management.Network.Model.Probe, options)
    |> deserialize(:"inboundNatRules", :list, Microsoft.Azure.Management.Network.Model.InboundNatRule, options)
    |> deserialize(:"inboundNatPools", :list, Microsoft.Azure.Management.Network.Model.InboundNatPool, options)
    |> deserialize(:"outboundNatRules", :list, Microsoft.Azure.Management.Network.Model.OutboundNatRule, options)
  end
end


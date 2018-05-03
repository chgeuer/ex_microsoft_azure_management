# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdateIpConfigurationProperties do
  @moduledoc """
  Describes a virtual machine scale set network profile&#39;s IP configuration properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"subnet",
    :"primary",
    :"publicIPAddressConfiguration",
    :"privateIPAddressVersion",
    :"applicationGatewayBackendAddressPools",
    :"loadBalancerBackendAddressPools",
    :"loadBalancerInboundNatPools"
  ]

  @type t :: %__MODULE__{
    :"subnet" => ApiEntityReference,
    :"primary" => boolean(),
    :"publicIPAddressConfiguration" => VirtualMachineScaleSetUpdatePublicIpAddressConfiguration,
    :"privateIPAddressVersion" => String.t,
    :"applicationGatewayBackendAddressPools" => [SubResource],
    :"loadBalancerBackendAddressPools" => [SubResource],
    :"loadBalancerInboundNatPools" => [SubResource]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdateIpConfigurationProperties do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"subnet", :struct, Microsoft.Azure.Management.Compute.Model.ApiEntityReference, options)
    |> deserialize(:"publicIPAddressConfiguration", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdatePublicIpAddressConfiguration, options)
    |> deserialize(:"applicationGatewayBackendAddressPools", :list, Microsoft.Azure.Management.Compute.Model.SubResource, options)
    |> deserialize(:"loadBalancerBackendAddressPools", :list, Microsoft.Azure.Management.Compute.Model.SubResource, options)
    |> deserialize(:"loadBalancerInboundNatPools", :list, Microsoft.Azure.Management.Compute.Model.SubResource, options)
  end
end


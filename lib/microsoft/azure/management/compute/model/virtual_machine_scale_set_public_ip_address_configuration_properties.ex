# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetPublicIpAddressConfigurationProperties do
  @moduledoc """
  Describes a virtual machines scale set IP Configuration&#39;s PublicIPAddress configuration
  """

  @derive [Poison.Encoder]
  defstruct [
    :"idleTimeoutInMinutes",
    :"dnsSettings"
  ]

  @type t :: %__MODULE__{
    :"idleTimeoutInMinutes" => integer(),
    :"dnsSettings" => VirtualMachineScaleSetPublicIpAddressConfigurationDnsSettings
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetPublicIpAddressConfigurationProperties do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"dnsSettings", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetPublicIpAddressConfigurationDnsSettings, options)
  end
end


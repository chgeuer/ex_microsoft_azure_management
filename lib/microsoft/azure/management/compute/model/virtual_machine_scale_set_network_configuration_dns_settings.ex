# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetNetworkConfigurationDnsSettings do
  @moduledoc """
  Describes a virtual machines scale sets network configuration&#39;s DNS settings.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"dnsServers"
  ]

  @type t :: %__MODULE__{
    :"dnsServers" => [String.t]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetNetworkConfigurationDnsSettings do
  def decode(value, _options) do
    value
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetPublicIpAddressConfiguration do
  @moduledoc """
  Describes a virtual machines scale set IP Configuration&#39;s PublicIPAddress configuration
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"properties" => VirtualMachineScaleSetPublicIpAddressConfigurationProperties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetPublicIpAddressConfiguration do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetPublicIpAddressConfigurationProperties, options)
  end
end

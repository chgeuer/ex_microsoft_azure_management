# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtensionProperties do
  @moduledoc """
  Describes the properties of a Virtual Machine Scale Set Extension.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"forceUpdateTag",
    :"publisher",
    :"type",
    :"typeHandlerVersion",
    :"autoUpgradeMinorVersion",
    :"settings",
    :"protectedSettings",
    :"provisioningState"
  ]

  @type t :: %__MODULE__{
    :"forceUpdateTag" => String.t,
    :"publisher" => String.t,
    :"type" => String.t,
    :"typeHandlerVersion" => String.t,
    :"autoUpgradeMinorVersion" => boolean(),
    :"settings" => Object,
    :"protectedSettings" => Object,
    :"provisioningState" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtensionProperties do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    ###|> deserialize(:"settings", :struct, Microsoft.Azure.Management.Compute.Model.Object, options)
    ###|> deserialize(:"protectedSettings", :struct, Microsoft.Azure.Management.Compute.Model.Object, options)
  end
end

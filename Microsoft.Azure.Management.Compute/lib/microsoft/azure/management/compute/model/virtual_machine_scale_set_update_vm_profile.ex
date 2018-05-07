# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdateVmProfile do
  @moduledoc """
  Describes a virtual machine scale set virtual machine profile.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"osProfile",
    :"storageProfile",
    :"networkProfile",
    :"diagnosticsProfile",
    :"extensionProfile",
    :"licenseType"
  ]

  @type t :: %__MODULE__{
    :"osProfile" => VirtualMachineScaleSetUpdateOsProfile,
    :"storageProfile" => VirtualMachineScaleSetUpdateStorageProfile,
    :"networkProfile" => VirtualMachineScaleSetUpdateNetworkProfile,
    :"diagnosticsProfile" => DiagnosticsProfile,
    :"extensionProfile" => VirtualMachineScaleSetExtensionProfile,
    :"licenseType" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdateVmProfile do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"osProfile", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdateOsProfile, options)
    |> deserialize(:"storageProfile", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdateStorageProfile, options)
    |> deserialize(:"networkProfile", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdateNetworkProfile, options)
    |> deserialize(:"diagnosticsProfile", :struct, Microsoft.Azure.Management.Compute.Model.DiagnosticsProfile, options)
    |> deserialize(:"extensionProfile", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtensionProfile, options)
  end
end

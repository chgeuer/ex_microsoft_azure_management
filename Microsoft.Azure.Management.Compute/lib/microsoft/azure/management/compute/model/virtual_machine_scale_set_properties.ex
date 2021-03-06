# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetProperties do
  @moduledoc """
  Describes the properties of a Virtual Machine Scale Set.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"upgradePolicy",
    :"virtualMachineProfile",
    :"provisioningState",
    :"overprovision",
    :"uniqueId",
    :"singlePlacementGroup",
    :"zoneBalance",
    :"platformFaultDomainCount"
  ]

  @type t :: %__MODULE__{
    :"upgradePolicy" => UpgradePolicy,
    :"virtualMachineProfile" => VirtualMachineScaleSetVmProfile,
    :"provisioningState" => String.t,
    :"overprovision" => boolean(),
    :"uniqueId" => String.t,
    :"singlePlacementGroup" => boolean(),
    :"zoneBalance" => boolean(),
    :"platformFaultDomainCount" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetProperties do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"upgradePolicy", :struct, Microsoft.Azure.Management.Compute.Model.UpgradePolicy, options)
    |> deserialize(:"virtualMachineProfile", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetVmProfile, options)
  end
end


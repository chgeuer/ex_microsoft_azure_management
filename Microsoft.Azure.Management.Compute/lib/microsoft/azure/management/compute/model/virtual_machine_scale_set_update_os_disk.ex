# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdateOsDisk do
  @moduledoc """
  Describes virtual machine scale set operating system disk Update Object. This should be used for Updating VMSS OS Disk.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"caching",
    :"writeAcceleratorEnabled",
    :"image",
    :"vhdContainers",
    :"managedDisk"
  ]

  @type t :: %__MODULE__{
    :"caching" => Caching,
    :"writeAcceleratorEnabled" => boolean(),
    :"image" => VirtualHardDisk,
    :"vhdContainers" => [String.t],
    :"managedDisk" => VirtualMachineScaleSetManagedDiskParameters
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetUpdateOsDisk do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"caching", :struct, Microsoft.Azure.Management.Compute.Model.Caching, options)
    |> deserialize(:"image", :struct, Microsoft.Azure.Management.Compute.Model.VirtualHardDisk, options)
    |> deserialize(:"managedDisk", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetManagedDiskParameters, options)
  end
end


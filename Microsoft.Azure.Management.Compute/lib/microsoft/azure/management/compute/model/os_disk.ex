# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.OsDisk do
  @moduledoc """
  Specifies information about the operating system disk used by the virtual machine. &lt;br&gt;&lt;br&gt; For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc&#x3D;%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
  """

  @derive [Poison.Encoder]
  defstruct [
    :"osType",
    :"encryptionSettings",
    :"name",
    :"vhd",
    :"image",
    :"caching",
    :"writeAcceleratorEnabled",
    :"createOption",
    :"diskSizeGB",
    :"managedDisk"
  ]

  @type t :: %__MODULE__{
    :"osType" => String.t,
    :"encryptionSettings" => DiskEncryptionSettings,
    :"name" => String.t,
    :"vhd" => VirtualHardDisk,
    :"image" => VirtualHardDisk,
    :"caching" => Caching,
    :"writeAcceleratorEnabled" => boolean(),
    :"createOption" => CreateOption,
    :"diskSizeGB" => integer(),
    :"managedDisk" => ManagedDiskParameters
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.OsDisk do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"encryptionSettings", :struct, Microsoft.Azure.Management.Compute.Model.DiskEncryptionSettings, options)
    |> deserialize(:"vhd", :struct, Microsoft.Azure.Management.Compute.Model.VirtualHardDisk, options)
    |> deserialize(:"image", :struct, Microsoft.Azure.Management.Compute.Model.VirtualHardDisk, options)
    |> deserialize(:"caching", :struct, Microsoft.Azure.Management.Compute.Model.Caching, options)
    |> deserialize(:"createOption", :struct, Microsoft.Azure.Management.Compute.Model.CreateOption, options)
    |> deserialize(:"managedDisk", :struct, Microsoft.Azure.Management.Compute.Model.ManagedDiskParameters, options)
  end
end


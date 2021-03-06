# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.StorageProfile do
  @moduledoc """
  Specifies the storage settings for the virtual machine disks.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"imageReference",
    :"osDisk",
    :"dataDisks"
  ]

  @type t :: %__MODULE__{
    :"imageReference" => ImageReference,
    :"osDisk" => OsDisk,
    :"dataDisks" => [DataDisk]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.StorageProfile do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"imageReference", :struct, Microsoft.Azure.Management.Compute.Model.ImageReference, options)
    |> deserialize(:"osDisk", :struct, Microsoft.Azure.Management.Compute.Model.OsDisk, options)
    |> deserialize(:"dataDisks", :list, Microsoft.Azure.Management.Compute.Model.DataDisk, options)
  end
end


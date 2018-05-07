# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineSize do
  @moduledoc """
  Describes the properties of a VM size.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"numberOfCores",
    :"osDiskSizeInMB",
    :"resourceDiskSizeInMB",
    :"memoryInMB",
    :"maxDataDiskCount"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"numberOfCores" => integer(),
    :"osDiskSizeInMB" => integer(),
    :"resourceDiskSizeInMB" => integer(),
    :"memoryInMB" => integer(),
    :"maxDataDiskCount" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineSize do
  def decode(value, _options) do
    value
  end
end

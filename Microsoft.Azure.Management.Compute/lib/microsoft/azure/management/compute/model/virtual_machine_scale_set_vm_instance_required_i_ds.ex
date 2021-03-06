# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetVmInstanceRequiredIDs do
  @moduledoc """
  Specifies a list of virtual machine instance IDs from the VM scale set.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"instanceIds"
  ]

  @type t :: %__MODULE__{
    :"instanceIds" => [String.t]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetVmInstanceRequiredIDs do
  def decode(value, _options) do
    value
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetSku do
  @moduledoc """
  Describes an available virtual machine scale set sku.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"resourceType",
    :"sku",
    :"capacity"
  ]

  @type t :: %__MODULE__{
    :"resourceType" => String.t,
    :"sku" => Sku,
    :"capacity" => VirtualMachineScaleSetSkuCapacity
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetSku do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sku", :struct, Microsoft.Azure.Management.Compute.Model.Sku, options)
    |> deserialize(:"capacity", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetSkuCapacity, options)
  end
end


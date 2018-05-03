# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetSkuCapacity do
  @moduledoc """
  Describes scaling information of a sku.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"minimum",
    :"maximum",
    :"defaultCapacity",
    :"scaleType"
  ]

  @type t :: %__MODULE__{
    :"minimum" => integer(),
    :"maximum" => integer(),
    :"defaultCapacity" => integer(),
    :"scaleType" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetSkuCapacity do
  def decode(value, _options) do
    value
  end
end


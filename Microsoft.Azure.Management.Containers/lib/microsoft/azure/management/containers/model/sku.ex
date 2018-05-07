# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.Sku do
  @moduledoc """
  The SKU of a container registry.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"tier"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"tier" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.Sku do
  def decode(value, _options) do
    value
  end
end


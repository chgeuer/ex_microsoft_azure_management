# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Storage.Model.Restriction do
  @moduledoc """
  The restriction because of which SKU cannot be used.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"type",
    :"values",
    :"reasonCode"
  ]

  @type t :: %__MODULE__{
    :"type" => String.t,
    :"values" => [String.t],
    :"reasonCode" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Storage.Model.Restriction do
  def decode(value, _options) do
    value
  end
end


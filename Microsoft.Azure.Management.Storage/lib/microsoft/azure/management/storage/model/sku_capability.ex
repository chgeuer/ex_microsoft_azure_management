# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Storage.Model.SkuCapability do
  @moduledoc """
  The capability information in the specified sku, including file encryption, network acls, change notification, etc.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"value" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Storage.Model.SkuCapability do
  def decode(value, _options) do
    value
  end
end


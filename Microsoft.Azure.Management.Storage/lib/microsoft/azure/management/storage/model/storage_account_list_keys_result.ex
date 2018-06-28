# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Storage.Model.StorageAccountListKeysResult do
  @moduledoc """
  The response from the ListKeys operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"keys"
  ]

  @type t :: %__MODULE__{
    :"keys" => [StorageAccountKey]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Storage.Model.StorageAccountListKeysResult do
  import Microsoft.Azure.Management.Storage.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"keys", :list, Microsoft.Azure.Management.Storage.Model.StorageAccountKey, options)
  end
end

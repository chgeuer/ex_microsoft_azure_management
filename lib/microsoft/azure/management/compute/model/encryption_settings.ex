# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.EncryptionSettings do
  @moduledoc """
  Encryption settings for disk or snapshot
  """

  @derive [Poison.Encoder]
  defstruct [
    :"enabled",
    :"diskEncryptionKey",
    :"keyEncryptionKey"
  ]

  @type t :: %__MODULE__{
    :"enabled" => boolean(),
    :"diskEncryptionKey" => KeyVaultAndSecretReference,
    :"keyEncryptionKey" => KeyVaultAndKeyReference
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.EncryptionSettings do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"diskEncryptionKey", :struct, Microsoft.Azure.Management.Compute.Model.KeyVaultAndSecretReference, options)
    |> deserialize(:"keyEncryptionKey", :struct, Microsoft.Azure.Management.Compute.Model.KeyVaultAndKeyReference, options)
  end
end


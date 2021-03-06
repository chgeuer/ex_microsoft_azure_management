# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Model.ProviderOperationsMetadataListResult do
  @moduledoc """
  Provider operations metadata list
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [ProviderOperationsMetadata],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Authorization.Model.ProviderOperationsMetadataListResult do
  import Microsoft.Azure.Management.Authorization.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Authorization.Model.ProviderOperationsMetadata, options)
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.RegistryListCredentialsResult do
  @moduledoc """
  The response from the ListCredentials operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"username",
    :"passwords"
  ]

  @type t :: %__MODULE__{
    :"username" => String.t,
    :"passwords" => [RegistryPassword]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.RegistryListCredentialsResult do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"passwords", :list, Microsoft.Azure.Management.Containers.Model.RegistryPassword, options)
  end
end


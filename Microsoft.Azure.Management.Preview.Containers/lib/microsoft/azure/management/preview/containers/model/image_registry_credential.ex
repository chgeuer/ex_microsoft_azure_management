# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Model.ImageRegistryCredential do
  @moduledoc """
  Image registry credential.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"server",
    :"username",
    :"password"
  ]

  @type t :: %__MODULE__{
    :"server" => String.t,
    :"username" => String.t,
    :"password" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Containers.Model.ImageRegistryCredential do
  def decode(value, _options) do
    value
  end
end

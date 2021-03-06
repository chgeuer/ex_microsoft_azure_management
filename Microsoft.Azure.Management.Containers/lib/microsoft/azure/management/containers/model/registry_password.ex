# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.RegistryPassword do
  @moduledoc """
  The login password for the container registry.
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

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.RegistryPassword do
  def decode(value, _options) do
    value
  end
end


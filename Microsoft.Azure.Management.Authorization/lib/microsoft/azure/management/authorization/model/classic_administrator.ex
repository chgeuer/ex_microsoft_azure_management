# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Model.ClassicAdministrator do
  @moduledoc """
  Classic Administrators
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"type",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"type" => String.t,
    :"properties" => ClassicAdministratorProperties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Authorization.Model.ClassicAdministrator do
  import Microsoft.Azure.Management.Authorization.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Authorization.Model.ClassicAdministratorProperties, options)
  end
end

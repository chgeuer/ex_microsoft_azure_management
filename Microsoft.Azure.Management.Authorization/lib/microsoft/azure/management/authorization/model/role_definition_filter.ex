# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Model.RoleDefinitionFilter do
  @moduledoc """
  Role Definitions filter
  """

  @derive [Poison.Encoder]
  defstruct [
    :"roleName"
  ]

  @type t :: %__MODULE__{
    :"roleName" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Authorization.Model.RoleDefinitionFilter do
  def decode(value, _options) do
    value
  end
end


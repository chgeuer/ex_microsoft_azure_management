# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Model.RoleAssignmentPropertiesWithScope do
  @moduledoc """
  Role assignment properties with scope.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"scope",
    :"roleDefinitionId",
    :"principalId"
  ]

  @type t :: %__MODULE__{
    :"scope" => String.t,
    :"roleDefinitionId" => String.t,
    :"principalId" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Authorization.Model.RoleAssignmentPropertiesWithScope do
  def decode(value, _options) do
    value
  end
end


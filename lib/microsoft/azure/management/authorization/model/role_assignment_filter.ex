# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Model.RoleAssignmentFilter do
  @moduledoc """
  Role Assignments filter
  """

  @derive [Poison.Encoder]
  defstruct [
    :"principalId"
  ]

  @type t :: %__MODULE__{
    :"principalId" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Authorization.Model.RoleAssignmentFilter do
  def decode(value, _options) do
    value
  end
end


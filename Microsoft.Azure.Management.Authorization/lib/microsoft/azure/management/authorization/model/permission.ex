# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Model.Permission do
  @moduledoc """
  Role definition permissions.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"actions",
    :"notActions"
  ]

  @type t :: %__MODULE__{
    :"actions" => [String.t],
    :"notActions" => [String.t]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Authorization.Model.Permission do
  def decode(value, _options) do
    value
  end
end


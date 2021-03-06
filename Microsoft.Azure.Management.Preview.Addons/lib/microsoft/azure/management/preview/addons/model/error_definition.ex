# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Addons.Model.ErrorDefinition do
  @moduledoc """
  Error description and code explaining why an operation failed.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"message",
    :"code"
  ]

  @type t :: %__MODULE__{
    :"message" => String.t,
    :"code" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Addons.Model.ErrorDefinition do
  def decode(value, _options) do
    value
  end
end


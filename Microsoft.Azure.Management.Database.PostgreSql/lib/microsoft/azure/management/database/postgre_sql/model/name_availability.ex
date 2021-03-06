# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.PostgreSql.Model.NameAvailability do
  @moduledoc """
  Represents a resource name availability.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"message",
    :"nameAvailable",
    :"reason"
  ]

  @type t :: %__MODULE__{
    :"message" => String.t,
    :"nameAvailable" => boolean(),
    :"reason" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.PostgreSql.Model.NameAvailability do
  def decode(value, _options) do
    value
  end
end


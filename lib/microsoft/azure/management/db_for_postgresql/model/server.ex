# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.DbForPostgresql.Model.Server do
  @moduledoc """
  Represents a server.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.DbForPostgresql.Model.Server do
  def decode(value, _options) do
    value
  end
end

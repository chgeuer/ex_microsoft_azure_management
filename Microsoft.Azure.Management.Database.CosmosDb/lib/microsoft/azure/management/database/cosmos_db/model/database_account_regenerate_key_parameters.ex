# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.CosmosDb.Model.DatabaseAccountRegenerateKeyParameters do
  @moduledoc """
  Parameters to regenerate the keys within the database account.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"keyKind"
  ]

  @type t :: %__MODULE__{
    :"keyKind" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.CosmosDb.Model.DatabaseAccountRegenerateKeyParameters do
  def decode(value, _options) do
    value
  end
end


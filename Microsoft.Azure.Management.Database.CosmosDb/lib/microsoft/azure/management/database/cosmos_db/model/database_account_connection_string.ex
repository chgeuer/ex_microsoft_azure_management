# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.CosmosDb.Model.DatabaseAccountConnectionString do
  @moduledoc """
  Connection string for the Cosmos DB account
  """

  @derive [Poison.Encoder]
  defstruct [
    :"connectionString",
    :"description"
  ]

  @type t :: %__MODULE__{
    :"connectionString" => String.t,
    :"description" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.CosmosDb.Model.DatabaseAccountConnectionString do
  def decode(value, _options) do
    value
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.CosmosDb.Model.ConsistencyPolicy do
  @moduledoc """
  The consistency policy for the Cosmos DB database account.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"defaultConsistencyLevel",
    :"maxStalenessPrefix",
    :"maxIntervalInSeconds"
  ]

  @type t :: %__MODULE__{
    :"defaultConsistencyLevel" => String.t,
    :"maxStalenessPrefix" => integer(),
    :"maxIntervalInSeconds" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.CosmosDb.Model.ConsistencyPolicy do
  def decode(value, _options) do
    value
  end
end


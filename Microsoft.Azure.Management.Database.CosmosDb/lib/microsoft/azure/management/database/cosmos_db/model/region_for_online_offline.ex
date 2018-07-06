# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.CosmosDb.Model.RegionForOnlineOffline do
  @moduledoc """
  Cosmos DB region to online or offline.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"region"
  ]

  @type t :: %__MODULE__{
    :"region" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.CosmosDb.Model.RegionForOnlineOffline do
  def decode(value, _options) do
    value
  end
end

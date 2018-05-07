# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.CosmosDb.Model.DatabaseAccountListReadOnlyKeysResult do
  @moduledoc """
  The read-only access keys for the given database account.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"primaryReadonlyMasterKey",
    :"secondaryReadonlyMasterKey"
  ]

  @type t :: %__MODULE__{
    :"primaryReadonlyMasterKey" => String.t,
    :"secondaryReadonlyMasterKey" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.CosmosDb.Model.DatabaseAccountListReadOnlyKeysResult do
  def decode(value, _options) do
    value
  end
end


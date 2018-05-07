# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.CosmosDb.Model.FailoverPolicy do
  @moduledoc """
  The failover policy for a given region of a database account.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"locationName",
    :"failoverPriority"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"locationName" => String.t,
    :"failoverPriority" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.CosmosDb.Model.FailoverPolicy do
  def decode(value, _options) do
    value
  end
end

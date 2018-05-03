# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.DbForPostgresql.Model.OperationListResult do
  @moduledoc """
  A list of resource provider operations.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value"
  ]

  @type t :: %__MODULE__{
    :"value" => [Operation]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.DbForPostgresql.Model.OperationListResult do
  import Microsoft.Azure.Management.DbForPostgresql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.DbForPostgresql.Model.Operation, options)
  end
end

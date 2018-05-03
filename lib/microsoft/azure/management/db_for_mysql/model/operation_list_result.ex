# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.DbForMysql.Model.OperationListResult do
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

defimpl Poison.Decoder, for: Microsoft.Azure.Management.DbForMysql.Model.OperationListResult do
  import Microsoft.Azure.Management.DbForMysql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.DbForMysql.Model.Operation, options)
  end
end

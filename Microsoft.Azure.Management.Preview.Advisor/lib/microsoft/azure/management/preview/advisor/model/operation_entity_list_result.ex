# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Advisor.Model.OperationEntityListResult do
  @moduledoc """
  The list of Advisor operations.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"nextLink",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"nextLink" => String.t,
    :"value" => [OperationEntity]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Advisor.Model.OperationEntityListResult do
  import Microsoft.Azure.Management.Preview.Advisor.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Preview.Advisor.Model.OperationEntity, options)
  end
end


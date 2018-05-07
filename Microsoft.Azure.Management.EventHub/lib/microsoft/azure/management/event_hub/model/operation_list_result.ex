# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventHub.Model.OperationListResult do
  @moduledoc """
  Result of the request to list Event Hub operations. It contains a list of operations and a URL link to get the next set of results.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [Operation],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventHub.Model.OperationListResult do
  import Microsoft.Azure.Management.EventHub.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.EventHub.Model.Operation, options)
  end
end


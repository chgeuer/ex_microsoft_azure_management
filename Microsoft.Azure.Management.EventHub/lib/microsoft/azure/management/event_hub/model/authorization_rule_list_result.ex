# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventHub.Model.AuthorizationRuleListResult do
  @moduledoc """
  The response from the List namespace operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [AuthorizationRule],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventHub.Model.AuthorizationRuleListResult do
  import Microsoft.Azure.Management.EventHub.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.EventHub.Model.AuthorizationRule, options)
  end
end

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Model.PolicyAssignmentProperties do
  @moduledoc """
  The policy assignment properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayName",
    :"policyDefinitionId",
    :"scope",
    :"parameters",
    :"description"
  ]

  @type t :: %__MODULE__{
    :"displayName" => String.t,
    :"policyDefinitionId" => String.t,
    :"scope" => String.t,
    :"parameters" => Object,
    :"description" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Authorization.Model.PolicyAssignmentProperties do
  import Microsoft.Azure.Management.Authorization.Deserializer
  def decode(value, options) do
    value
    ##|> deserialize(:"parameters", :struct, Microsoft.Azure.Management.Authorization.Model.Object, options)
  end
end

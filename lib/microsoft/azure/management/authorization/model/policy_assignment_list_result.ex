# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Model.PolicyAssignmentListResult do
  @moduledoc """
  List of policy assignments.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [PolicyAssignment],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Authorization.Model.PolicyAssignmentListResult do
  import Microsoft.Azure.Management.Authorization.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Authorization.Model.PolicyAssignment, options)
  end
end


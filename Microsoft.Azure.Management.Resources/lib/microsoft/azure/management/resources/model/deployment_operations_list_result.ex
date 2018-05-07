# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.DeploymentOperationsListResult do
  @moduledoc """
  List of deployment operations.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [DeploymentOperation],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.DeploymentOperationsListResult do
  import Microsoft.Azure.Management.Resources.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Resources.Model.DeploymentOperation, options)
  end
end

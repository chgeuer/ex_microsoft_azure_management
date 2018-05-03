# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.DeploymentOperation do
  @moduledoc """
  Deployment operation information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"operationId",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"operationId" => String.t,
    :"properties" => DeploymentOperationProperties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.DeploymentOperation do
  import Microsoft.Azure.Management.Resources.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Resources.Model.DeploymentOperationProperties, options)
  end
end

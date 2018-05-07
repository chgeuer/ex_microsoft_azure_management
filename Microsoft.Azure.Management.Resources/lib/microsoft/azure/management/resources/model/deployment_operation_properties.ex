# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.DeploymentOperationProperties do
  @moduledoc """
  Deployment operation properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"provisioningState",
    :"timestamp",
    :"serviceRequestId",
    :"statusCode",
    :"statusMessage",
    :"targetResource",
    :"request",
    :"response"
  ]

  @type t :: %__MODULE__{
    :"provisioningState" => String.t,
    :"timestamp" => DateTime.t,
    :"serviceRequestId" => String.t,
    :"statusCode" => String.t,
    :"statusMessage" => Object,
    :"targetResource" => TargetResource,
    :"request" => HttpMessage,
    :"response" => HttpMessage
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.DeploymentOperationProperties do
  import Microsoft.Azure.Management.Resources.Deserializer
  def decode(value, options) do
    value
    #|> deserialize(:"statusMessage", :struct, Microsoft.Azure.Management.Resources.Model.Object, options)
    |> deserialize(:"targetResource", :struct, Microsoft.Azure.Management.Resources.Model.TargetResource, options)
    |> deserialize(:"request", :struct, Microsoft.Azure.Management.Resources.Model.HttpMessage, options)
    |> deserialize(:"response", :struct, Microsoft.Azure.Management.Resources.Model.HttpMessage, options)
  end
end

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.OnErrorDeploymentExtended do
  @moduledoc """
  Deployment on error behavior with additional details.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"provisioningState",
    :"type",
    :"deploymentName"
  ]

  @type t :: %__MODULE__{
    :"provisioningState" => String.t,
    :"type" => String.t,
    :"deploymentName" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.OnErrorDeploymentExtended do
  def decode(value, _options) do
    value
  end
end


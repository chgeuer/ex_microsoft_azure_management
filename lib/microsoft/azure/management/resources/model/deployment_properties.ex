# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.DeploymentProperties do
  @moduledoc """
  Deployment properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"template",
    :"templateLink",
    :"parameters",
    :"parametersLink",
    :"mode",
    :"debugSetting",
    :"onErrorDeployment"
  ]

  @type t :: %__MODULE__{
    :"template" => Object,
    :"templateLink" => TemplateLink,
    :"parameters" => Object,
    :"parametersLink" => ParametersLink,
    :"mode" => String.t,
    :"debugSetting" => DebugSetting,
    :"onErrorDeployment" => OnErrorDeployment
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.DeploymentProperties do
  import Microsoft.Azure.Management.Resources.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"template", :struct, Microsoft.Azure.Management.Resources.Model.Object, options)
    |> deserialize(:"templateLink", :struct, Microsoft.Azure.Management.Resources.Model.TemplateLink, options)
    |> deserialize(:"parameters", :struct, Microsoft.Azure.Management.Resources.Model.Object, options)
    |> deserialize(:"parametersLink", :struct, Microsoft.Azure.Management.Resources.Model.ParametersLink, options)
    |> deserialize(:"debugSetting", :struct, Microsoft.Azure.Management.Resources.Model.DebugSetting, options)
    |> deserialize(:"onErrorDeployment", :struct, Microsoft.Azure.Management.Resources.Model.OnErrorDeployment, options)
  end
end

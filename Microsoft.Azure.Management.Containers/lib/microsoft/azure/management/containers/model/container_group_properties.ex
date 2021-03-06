# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.ContainerGroupProperties do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"provisioningState",
    :"containers",
    :"imageRegistryCredentials",
    :"restartPolicy",
    :"ipAddress",
    :"osType",
    :"volumes",
    :"instanceView"
  ]

  @type t :: %__MODULE__{
    :"provisioningState" => String.t,
    :"containers" => [Container],
    :"imageRegistryCredentials" => [ImageRegistryCredential],
    :"restartPolicy" => String.t,
    :"ipAddress" => IpAddress,
    :"osType" => String.t,
    :"volumes" => [Volume],
    :"instanceView" => ContainerGroupPropertiesInstanceView
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.ContainerGroupProperties do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"containers", :list, Microsoft.Azure.Management.Containers.Model.Container, options)
    |> deserialize(:"imageRegistryCredentials", :list, Microsoft.Azure.Management.Containers.Model.ImageRegistryCredential, options)
    |> deserialize(:"ipAddress", :struct, Microsoft.Azure.Management.Containers.Model.IpAddress, options)
    |> deserialize(:"volumes", :list, Microsoft.Azure.Management.Containers.Model.Volume, options)
    |> deserialize(:"instanceView", :struct, Microsoft.Azure.Management.Containers.Model.ContainerGroupPropertiesInstanceView, options)
  end
end


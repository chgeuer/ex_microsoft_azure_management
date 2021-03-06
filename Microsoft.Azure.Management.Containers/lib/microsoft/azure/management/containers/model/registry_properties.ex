# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.RegistryProperties do
  @moduledoc """
  The properties of a container registry.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"loginServer",
    :"creationDate",
    :"provisioningState",
    :"status",
    :"adminUserEnabled",
    :"storageAccount"
  ]

  @type t :: %__MODULE__{
    :"loginServer" => String.t,
    :"creationDate" => DateTime.t,
    :"provisioningState" => String.t,
    :"status" => Status,
    :"adminUserEnabled" => boolean(),
    :"storageAccount" => StorageAccountProperties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.RegistryProperties do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, Microsoft.Azure.Management.Containers.Model.Status, options)
    |> deserialize(:"storageAccount", :struct, Microsoft.Azure.Management.Containers.Model.StorageAccountProperties, options)
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.ContainerServiceMasterProfile do
  @moduledoc """
  Profile for the container service master.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"count",
    :"dnsPrefix",
    :"vmSize",
    :"osDiskSizeGB",
    :"vnetSubnetID",
    :"firstConsecutiveStaticIP",
    :"storageProfile",
    :"fqdn"
  ]

  @type t :: %__MODULE__{
    :"count" => integer(),
    :"dnsPrefix" => String.t,
    :"vmSize" => ContainerServiceVmSize,
    :"osDiskSizeGB" => ContainerServiceOsDisk,
    :"vnetSubnetID" => ContainerServiceVnetSubnetId,
    :"firstConsecutiveStaticIP" => String.t,
    :"storageProfile" => ContainerServiceStorageProfile,
    :"fqdn" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.ContainerServiceMasterProfile do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"vmSize", :struct, Microsoft.Azure.Management.Containers.Model.ContainerServiceVmSize, options)
    |> deserialize(:"osDiskSizeGB", :struct, Microsoft.Azure.Management.Containers.Model.ContainerServiceOsDisk, options)
    |> deserialize(:"vnetSubnetID", :struct, Microsoft.Azure.Management.Containers.Model.ContainerServiceVnetSubnetId, options)
    |> deserialize(:"storageProfile", :struct, Microsoft.Azure.Management.Containers.Model.ContainerServiceStorageProfile, options)
  end
end


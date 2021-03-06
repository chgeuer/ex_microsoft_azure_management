# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.ContainerServiceLinuxProfile do
  @moduledoc """
  Profile for Linux VMs in the container service cluster.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"adminUsername",
    :"ssh"
  ]

  @type t :: %__MODULE__{
    :"adminUsername" => String.t,
    :"ssh" => ContainerServiceSshConfiguration
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.ContainerServiceLinuxProfile do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ssh", :struct, Microsoft.Azure.Management.Containers.Model.ContainerServiceSshConfiguration, options)
  end
end


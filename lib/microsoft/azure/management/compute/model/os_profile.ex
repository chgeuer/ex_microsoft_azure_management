# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.OsProfile do
  @moduledoc """
  Specifies the operating system settings for the virtual machine.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"computerName",
    :"adminUsername",
    :"adminPassword",
    :"customData",
    :"windowsConfiguration",
    :"linuxConfiguration",
    :"secrets"
  ]

  @type t :: %__MODULE__{
    :"computerName" => String.t,
    :"adminUsername" => String.t,
    :"adminPassword" => String.t,
    :"customData" => String.t,
    :"windowsConfiguration" => WindowsConfiguration,
    :"linuxConfiguration" => LinuxConfiguration,
    :"secrets" => [VaultSecretGroup]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.OsProfile do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"windowsConfiguration", :struct, Microsoft.Azure.Management.Compute.Model.WindowsConfiguration, options)
    |> deserialize(:"linuxConfiguration", :struct, Microsoft.Azure.Management.Compute.Model.LinuxConfiguration, options)
    |> deserialize(:"secrets", :list, Microsoft.Azure.Management.Compute.Model.VaultSecretGroup, options)
  end
end


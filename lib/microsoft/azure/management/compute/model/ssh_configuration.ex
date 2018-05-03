# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.SshConfiguration do
  @moduledoc """
  SSH configuration for Linux based VMs running on Azure
  """

  @derive [Poison.Encoder]
  defstruct [
    :"publicKeys"
  ]

  @type t :: %__MODULE__{
    :"publicKeys" => [SshPublicKey]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.SshConfiguration do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"publicKeys", :list, Microsoft.Azure.Management.Compute.Model.SshPublicKey, options)
  end
end


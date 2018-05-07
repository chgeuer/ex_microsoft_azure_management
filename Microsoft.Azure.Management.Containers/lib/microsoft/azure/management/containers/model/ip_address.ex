# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.IpAddress do
  @moduledoc """
  IP address for the container group.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ports",
    :"type",
    :"ip",
    :"dnsNameLabel",
    :"fqdn"
  ]

  @type t :: %__MODULE__{
    :"ports" => [Port],
    :"type" => String.t,
    :"ip" => String.t,
    :"dnsNameLabel" => String.t,
    :"fqdn" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.IpAddress do
  import Microsoft.Azure.Management.Containers.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ports", :list, Microsoft.Azure.Management.Containers.Model.Port, options)
  end
end


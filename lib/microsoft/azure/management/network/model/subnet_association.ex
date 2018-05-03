# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.SubnetAssociation do
  @moduledoc """
  Network interface and its custom security rules.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"securityRules"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"securityRules" => [SecurityRule]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.SubnetAssociation do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"securityRules", :list, Microsoft.Azure.Management.Network.Model.SecurityRule, options)
  end
end


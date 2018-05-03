# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.FlowLogProperties do
  @moduledoc """
  Parameters that define the configuration of flow log.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"storageId",
    :"enabled",
    :"retentionPolicy"
  ]

  @type t :: %__MODULE__{
    :"storageId" => String.t,
    :"enabled" => boolean(),
    :"retentionPolicy" => RetentionPolicyParameters
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.FlowLogProperties do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"retentionPolicy", :struct, Microsoft.Azure.Management.Network.Model.RetentionPolicyParameters, options)
  end
end

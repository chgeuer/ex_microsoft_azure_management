# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.DbForPostgresql.Model.ServerUpdateParametersProperties do
  @moduledoc """
  The properties that can be updated for a server.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"storageProfile",
    :"administratorLoginPassword",
    :"version",
    :"sslEnforcement"
  ]

  @type t :: %__MODULE__{
    :"storageProfile" => StorageProfile,
    :"administratorLoginPassword" => String.t,
    :"version" => ServerVersion,
    :"sslEnforcement" => SslEnforcement
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.DbForPostgresql.Model.ServerUpdateParametersProperties do
  import Microsoft.Azure.Management.DbForPostgresql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"storageProfile", :struct, Microsoft.Azure.Management.DbForPostgresql.Model.StorageProfile, options)
    |> deserialize(:"version", :struct, Microsoft.Azure.Management.DbForPostgresql.Model.ServerVersion, options)
    |> deserialize(:"sslEnforcement", :struct, Microsoft.Azure.Management.DbForPostgresql.Model.SslEnforcement, options)
  end
end


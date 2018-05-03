# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.DbForPostgresql.Model.ServerProperties do
  @moduledoc """
  The properties of a server.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"administratorLogin",
    :"version",
    :"sslEnforcement",
    :"userVisibleState",
    :"fullyQualifiedDomainName",
    :"earliestRestoreDate",
    :"storageProfile"
  ]

  @type t :: %__MODULE__{
    :"administratorLogin" => String.t,
    :"version" => ServerVersion,
    :"sslEnforcement" => SslEnforcement,
    :"userVisibleState" => String.t,
    :"fullyQualifiedDomainName" => String.t,
    :"earliestRestoreDate" => DateTime.t,
    :"storageProfile" => StorageProfile
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.DbForPostgresql.Model.ServerProperties do
  import Microsoft.Azure.Management.DbForPostgresql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"version", :struct, Microsoft.Azure.Management.DbForPostgresql.Model.ServerVersion, options)
    |> deserialize(:"sslEnforcement", :struct, Microsoft.Azure.Management.DbForPostgresql.Model.SslEnforcement, options)
    |> deserialize(:"storageProfile", :struct, Microsoft.Azure.Management.DbForPostgresql.Model.StorageProfile, options)
  end
end


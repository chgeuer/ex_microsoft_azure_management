# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.PostgreSql.Model.ServerPropertiesForRestore do
  @moduledoc """
  The properties used to create a new server by restoring from a backup.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"version",
    :"sslEnforcement",
    :"storageProfile",
    :"createMode"
  ]

  @type t :: %__MODULE__{
    :"version" => ServerVersion,
    :"sslEnforcement" => SslEnforcement,
    :"storageProfile" => StorageProfile,
    :"createMode" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.PostgreSql.Model.ServerPropertiesForRestore do
  import Microsoft.Azure.Management.Database.PostgreSql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"version", :struct, Microsoft.Azure.Management.Database.PostgreSql.Model.ServerVersion, options)
    |> deserialize(:"sslEnforcement", :struct, Microsoft.Azure.Management.Database.PostgreSql.Model.SslEnforcement, options)
    |> deserialize(:"storageProfile", :struct, Microsoft.Azure.Management.Database.PostgreSql.Model.StorageProfile, options)
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.MySql.Model.StorageProfile do
  @moduledoc """
  Storage Profile properties of a server
  """

  @derive [Poison.Encoder]
  defstruct [
    :"backupRetentionDays",
    :"geoRedundantBackup",
    :"storageMB"
  ]

  @type t :: %__MODULE__{
    :"backupRetentionDays" => integer(),
    :"geoRedundantBackup" => String.t,
    :"storageMB" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.MySql.Model.StorageProfile do
  def decode(value, _options) do
    value
  end
end

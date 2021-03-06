# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.AzureFileVolume do
  @moduledoc """
  The properties of the Azure File volume. Azure File shares are mounted as volumes.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"shareName",
    :"readOnly",
    :"storageAccountName",
    :"storageAccountKey"
  ]

  @type t :: %__MODULE__{
    :"shareName" => String.t,
    :"readOnly" => boolean(),
    :"storageAccountName" => String.t,
    :"storageAccountKey" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.AzureFileVolume do
  def decode(value, _options) do
    value
  end
end


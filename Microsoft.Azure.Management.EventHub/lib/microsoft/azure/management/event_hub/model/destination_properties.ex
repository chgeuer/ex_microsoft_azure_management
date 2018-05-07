# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventHub.Model.DestinationProperties do
  @moduledoc """
  Properties describing the storage account, blob container and acrchive anme format for capture destination
  """

  @derive [Poison.Encoder]
  defstruct [
    :"storageAccountResourceId",
    :"blobContainer",
    :"archiveNameFormat"
  ]

  @type t :: %__MODULE__{
    :"storageAccountResourceId" => String.t,
    :"blobContainer" => String.t,
    :"archiveNameFormat" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventHub.Model.DestinationProperties do
  def decode(value, _options) do
    value
  end
end

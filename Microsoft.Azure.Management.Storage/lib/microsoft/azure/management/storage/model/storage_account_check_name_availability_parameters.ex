# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Storage.Model.StorageAccountCheckNameAvailabilityParameters do
  @moduledoc """
  The parameters used to check the availabity of the storage account name.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Storage.Model.StorageAccountCheckNameAvailabilityParameters do
  def decode(value, _options) do
    value
  end
end


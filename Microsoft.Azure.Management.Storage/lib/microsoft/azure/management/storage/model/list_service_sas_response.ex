# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Storage.Model.ListServiceSasResponse do
  @moduledoc """
  The List service SAS credentials operation response.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"serviceSasToken"
  ]

  @type t :: %__MODULE__{
    :"serviceSasToken" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Storage.Model.ListServiceSasResponse do
  def decode(value, _options) do
    value
  end
end


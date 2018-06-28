# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Storage.Model.TagProperty do
  @moduledoc """
  A tag of the LegalHold of a blob container.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"tag",
    :"timestamp",
    :"objectIdentifier",
    :"tenantId",
    :"upn"
  ]

  @type t :: %__MODULE__{
    :"tag" => String.t,
    :"timestamp" => DateTime.t,
    :"objectIdentifier" => String.t,
    :"tenantId" => String.t,
    :"upn" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Storage.Model.TagProperty do
  def decode(value, _options) do
    value
  end
end

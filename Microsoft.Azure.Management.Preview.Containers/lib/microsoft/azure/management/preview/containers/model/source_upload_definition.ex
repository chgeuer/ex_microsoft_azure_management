# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Model.SourceUploadDefinition do
  @moduledoc """
  The properties of a response to source upload request.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"uploadUrl",
    :"relativePath"
  ]

  @type t :: %__MODULE__{
    :"uploadUrl" => String.t,
    :"relativePath" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Containers.Model.SourceUploadDefinition do
  def decode(value, _options) do
    value
  end
end


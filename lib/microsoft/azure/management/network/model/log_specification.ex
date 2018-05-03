# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.LogSpecification do
  @moduledoc """
  Description of logging specification.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"displayName",
    :"blobDuration"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"displayName" => String.t,
    :"blobDuration" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.LogSpecification do
  def decode(value, _options) do
    value
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.EventHub.Model.TrackedResource do
  @moduledoc """
  Definition of an Azure resource.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.EventHub.Model.TrackedResource do
  def decode(value, _options) do
    value
  end
end


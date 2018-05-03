# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule CommonTypes.Model.ProxyResource do
  @moduledoc """
  The resource model definition for a ARM proxy resource. It will have everything other than required location and tags
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

defimpl Poison.Decoder, for: CommonTypes.Model.ProxyResource do
  def decode(value, _options) do
    value
  end
end

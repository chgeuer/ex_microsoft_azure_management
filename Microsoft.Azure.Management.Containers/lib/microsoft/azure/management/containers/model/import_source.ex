# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.ImportSource do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"resourceId",
    :"sourceImage"
  ]

  @type t :: %__MODULE__{
    :"resourceId" => String.t,
    :"sourceImage" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.ImportSource do
  def decode(value, _options) do
    value
  end
end


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.ResourceSkuLocationInfo do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"location",
    :"zones"
  ]

  @type t :: %__MODULE__{
    :"location" => String.t,
    :"zones" => [String.t]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.ResourceSkuLocationInfo do
  def decode(value, _options) do
    value
  end
end

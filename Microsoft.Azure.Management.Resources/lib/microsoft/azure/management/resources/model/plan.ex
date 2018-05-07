# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.Plan do
  @moduledoc """
  Plan for the resource.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"publisher",
    :"product",
    :"promotionCode",
    :"version"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"publisher" => String.t,
    :"product" => String.t,
    :"promotionCode" => String.t,
    :"version" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.Plan do
  def decode(value, _options) do
    value
  end
end

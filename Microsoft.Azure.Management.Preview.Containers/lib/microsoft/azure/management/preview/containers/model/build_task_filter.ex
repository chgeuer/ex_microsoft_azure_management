# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Model.BuildTaskFilter do
  @moduledoc """
  The filter that can be used for listing build tasks.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"alias"
  ]

  @type t :: %__MODULE__{
    :"alias" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Containers.Model.BuildTaskFilter do
  def decode(value, _options) do
    value
  end
end


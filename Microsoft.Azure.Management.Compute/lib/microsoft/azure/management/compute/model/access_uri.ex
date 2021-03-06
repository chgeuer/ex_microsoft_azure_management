# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.AccessUri do
  @moduledoc """
  A disk access SAS uri.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"accessSAS"
  ]

  @type t :: %__MODULE__{
    :"accessSAS" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.AccessUri do
  def decode(value, _options) do
    value
  end
end


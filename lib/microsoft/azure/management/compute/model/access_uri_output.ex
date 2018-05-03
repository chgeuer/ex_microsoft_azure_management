# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.AccessUriOutput do
  @moduledoc """
  Azure properties, including output.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"output"
  ]

  @type t :: %__MODULE__{
    :"output" => AccessUriRaw
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.AccessUriOutput do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"output", :struct, Microsoft.Azure.Management.Compute.Model.AccessUriRaw, options)
  end
end


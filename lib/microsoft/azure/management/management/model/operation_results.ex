# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Management.Model.OperationResults do
  @moduledoc """
  The results of an asynchronous operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"type",
    :"name",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"type" => String.t,
    :"name" => String.t,
    :"properties" => Properties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Management.Model.OperationResults do
  import Microsoft.Azure.Management.Management.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Management.Model.Properties, options)
  end
end


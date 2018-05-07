# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Advisor.Model.OperationEntity do
  @moduledoc """
  The operation supported by Advisor.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"display"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"display" => OperationDisplayInfo
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Advisor.Model.OperationEntity do
  import Microsoft.Azure.Management.Preview.Advisor.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"display", :struct, Microsoft.Azure.Management.Preview.Advisor.Model.OperationDisplayInfo, options)
  end
end


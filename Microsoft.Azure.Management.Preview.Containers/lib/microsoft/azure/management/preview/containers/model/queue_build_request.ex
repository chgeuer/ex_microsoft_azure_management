# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Model.QueueBuildRequest do
  @moduledoc """
  The queue build request parameters.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"type"
  ]

  @type t :: %__MODULE__{
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Containers.Model.QueueBuildRequest do
  def decode(value, _options) do
    value
  end
end


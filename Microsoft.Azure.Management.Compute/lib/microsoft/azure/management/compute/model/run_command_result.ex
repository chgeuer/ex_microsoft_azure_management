# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.RunCommandResult do
  @moduledoc """
  Run command operation response.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"status",
    :"startTime",
    :"endTime",
    :"error"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"status" => String.t,
    :"startTime" => DateTime.t,
    :"endTime" => DateTime.t,
    :"error" => ApiError
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.RunCommandResult do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"error", :struct, Microsoft.Azure.Management.Compute.Model.ApiError, options)
  end
end


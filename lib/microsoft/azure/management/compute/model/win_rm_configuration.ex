# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.WinRmConfiguration do
  @moduledoc """
  Describes Windows Remote Management configuration of the VM
  """

  @derive [Poison.Encoder]
  defstruct [
    :"listeners"
  ]

  @type t :: %__MODULE__{
    :"listeners" => [WinRmListener]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.WinRmConfiguration do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"listeners", :list, Microsoft.Azure.Management.Compute.Model.WinRmListener, options)
  end
end

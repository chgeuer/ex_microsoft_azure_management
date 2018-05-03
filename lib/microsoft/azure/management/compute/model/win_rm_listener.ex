# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.WinRmListener do
  @moduledoc """
  Describes Protocol and thumbprint of Windows Remote Management listener
  """

  @derive [Poison.Encoder]
  defstruct [
    :"protocol",
    :"certificateUrl"
  ]

  @type t :: %__MODULE__{
    :"protocol" => String.t,
    :"certificateUrl" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.WinRmListener do
  def decode(value, _options) do
    value
  end
end

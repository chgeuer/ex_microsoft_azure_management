# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Model.ResourcesMoveInfo do
  @moduledoc """
  Parameters of move resources.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"resources",
    :"targetResourceGroup"
  ]

  @type t :: %__MODULE__{
    :"resources" => [String.t],
    :"targetResourceGroup" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Resources.Model.ResourcesMoveInfo do
  def decode(value, _options) do
    value
  end
end


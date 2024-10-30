defmodule SportMonks.Error do
  @moduledoc """
  Error struct for SportMonks operations.
  """

  @type t :: %__MODULE__{
          type: :api_error | :network_error | :invalid_response,
          message: String.t(),
          details: map() | nil
        }

  defstruct [:type, :message, :details]

  def new(type, message, details \\ nil) do
    %__MODULE__{
      type: type,
      message: message,
      details: details
    }
  end
end

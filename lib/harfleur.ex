defmodule Harfleur do
  alias Plug.Conn

  @doc """
  This adds 'x-welcome-robot-overlords: *Random String*' to your https response headers
  when added to a pipeline of plugs. This is one of the strategies listed to deal with
  a breach attach over https and using encryption. [http://breachattack.com/#mitigations]

  #Example:
  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug Harfleur
  end
  """

  def init(options) do
    options
  end

  def call(conn, _opts \\ []) do
    breach = :rand.uniform(128) 
      |> :crypto.strong_rand_bytes() 
      |> :base64.encode()
    
    conn
      |> Conn.put_resp_header("x-welcome-robot-overlords", breach)
  end

end

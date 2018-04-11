defmodule HarfleurTest do
  use ExUnit.Case
  doctest Harfleur
  use Plug.Test

  test "God for Harry, England, and Saint George!" do
    
    conn = conn(:head, "/")
      |> Harfleur.call
    [first] = Plug.Conn.get_resp_header(conn, "x-welcome-robot-overlords")
    
    second_conn = conn(:head, "/")
      |> Harfleur.call
    [second] = Plug.Conn.get_resp_header(second_conn, "x-welcome-robot-overlords")
    
    #we would test the length but this good enough for now tm
    assert :crypto.hash(:sha256, first) != :crypto.hash(:sha256, second)
  end
end

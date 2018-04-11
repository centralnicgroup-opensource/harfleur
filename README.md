# Harfleur

This adds 'x-welcome-robot-overlords: *Random String*' to your https response headers
when added to a pipeline of plugs. This is one of the strategies listed to deal with
a breach attach over https and using encryption. [http://breachattack.com/#mitigations]

## Example:
```elixir
  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug Harfleur
  end
```

# frozen_string_literal: true
require "spec_helper"

describe Uber::Client do
  it "masks server token on inspect" do
    client = Uber::Client.new(server_token: "SQV6Ia3r9gWXDETvqiUw4k8OsjLC5_Cw9DkYpZot")

    inspected = client.inspect

    expect(inspected).to include("************************************pZot")
  end

  it "masks client secrets on inspect" do
    client = Uber::Client.new(client_secret: "no4kULWQdJBlvA6VH2Ia7DXSpigZxRmszOC_RBsl")

    inspected = client.inspect

    expect(inspected).to include("************************************RBsl")
  end
end

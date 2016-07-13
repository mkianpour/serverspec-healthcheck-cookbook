def check_ruby2
  %x( ~/.rbenv/bin/rbenv versions )
end

describe check_ruby2 do
  it { should include("version","2.") }
end

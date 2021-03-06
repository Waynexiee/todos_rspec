require 'rails_helper'

describe Todo, "#completed?" do
  it "returns true if completed_at is set" do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end
  it "returns false if completed_at is nil" do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end
end

describe Todo, "completed!" do
  it "has completed_at after completed" do
    todo = Todo.create(completed_at:nil)

    todo.completed!
    todo.reload
    expect(todo).to be_completed
  end
end

describe Todo, "incompleted!" do
  it "doesn't have completed_at after completed" do
    todo = Todo.create(completed_at: Time.current)

    todo.incompleted!

    todo.reload
    expect(todo).not_to be_completed
  end
end

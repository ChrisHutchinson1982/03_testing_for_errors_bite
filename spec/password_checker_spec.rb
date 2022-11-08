require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true if password length is 8 or greater" do
    checker = PasswordChecker.new
    expect(checker.check("12345678")).to eq true
    expect(checker.check("123456789")).to eq true
  end

  it "fails if password length is less than eight" do
    checker = PasswordChecker.new
    expect { checker.check("1")}.to raise_error "Invalid password, must be 8+ characters."
  end

  it "return true if password length is 8 or greater" do
    checker = PasswordChecker.new
    ['asdfghjk', 'sdakjfhsdilufhds', 'sdjhnvkajnxoue'].each do |password|
      expect(checker.check(password)).to eq true
    end
  end

  it "Fails if password length is less than 8" do
    checker = PasswordChecker.new
    ['asdf', 'hjkl', 'ff'].each do |password|
      expect { checker.check(password) }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
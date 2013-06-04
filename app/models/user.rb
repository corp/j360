#!/bin/env ruby
# encoding: utf-8
class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :profile_picture
  validates :email, :uniqueness=>true, :presence=>true
  validates :password, :password_confirmation, :presence=>true
  
  def reset_password
    self.password = self.password_confirmation = SecureRandom.hex(len=9).to_i(16).to_s(36)[0..9]
    self.save
  end
end

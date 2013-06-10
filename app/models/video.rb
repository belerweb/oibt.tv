class Video < ActiveRecord::Base
  alias_attribute :id, :ID
  alias_attribute :name, :NAME
  alias_attribute :tag, :TAG
  alias_attribute :description, :DESCRIPTION
  alias_attribute :magnet, :MAGNET
  alias_attribute :ed2k, :ED2K
  alias_attribute :thunder, :THUNDER
  alias_attribute :author, :AUTHOR
  alias_attribute :download, :DOWNLOAD
  alias_attribute :extra, :EXTRA
  alias_attribute :extrakey, :EXTRA_KEY
  alias_attribute :createdtime, :CREATED_TIME
end

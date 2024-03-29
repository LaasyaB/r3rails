#
# Copyright @year@ @owner@
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# <@(#) $Id: 011_room_properties.rb,v 1.1 2007/09/08 03:11:47 jury Exp $>
#
# 改定履歴
# 2007/09/08 (岡村 淳司) [S15] 会議室プロパティ
#
class RoomProperties < ActiveRecord::Migration
  def self.up
    add_column "rooms", "capacity", :integer, :default => 0
    add_column "rooms", "tel", :string
  end

  def self.down
    remove_column "rooms", "capacity"
    remove_column "rooms", "tel"
  end
end

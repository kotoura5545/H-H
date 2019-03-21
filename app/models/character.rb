class Character < ApplicationRecord

	has_many :g_characters
	has_many :groups, through: :g_characters

	enum chapter:{王位継承編: 0, 選挙編: 1, キメラアント編: 2, グリードアイランド編: 3, 幻影旅団編: 4, 天空闘技場編: 5, ハンター試験編: 6, その他: 7}
	enum menu:{強化系: 0, 変化系: 1, 具現化系: 2, 特質系: 3, 操作系: 4, 放出系: 5, 不明: 6}
	
	acts_as_taggable_on :groups
	attachment :character_image

end

class String
  def strip_emojis
    XoEmoji.strip_all(self)
  end
end

class XoEmoji
  def self.strip_all(str)
    return '' if not str

    # new emojis
    str = str.gsub(/[\u{1F910}-\u{1F918}]/,'')
    str = str.gsub(/[\u{1F32D}]/, '')
    str = str.gsub(/[\u{1F32E}]/, '')
    str = str.gsub(/[\u{1F32F}]/, '')
    str = str.gsub(/[\u{1F3FB}]/, '')
    str = str.gsub(/[\u{1F3FC}]/, '')
    str = str.gsub(/[\u{1F3FD}]/, '')
    str = str.gsub(/[\u{1F3FE}]/, '')
    str = str.gsub(/[\u{1F3FF}]/, '')
    str = str.gsub(/[\u{1F4FF}]/, '')
    str = str.gsub(/[\u{1F644}]/, '')
    str = str.gsub(/[\u{1F980}]/, '')
    str = str.gsub(/[\u{1F981}]/, '')
    str = str.gsub(/[\u{1F982}]/, '')
    str = str.gsub(/[\u{1F983}]/, '')
    str = str.gsub(/[\u{1F984}]/, '')
    str = str.gsub(/[\u{1F9C0}]/, '')

    str = str.force_encoding('utf-8').encode
    str = str.gsub(/[\u{1f600}-\u{1f64f}]/, '')
    str = str.gsub(/[\u{1F64C}]/, '')
    str = str.gsub(/[\u{2702}-\u{27b0}]/,'')

    # transport/map symbols
    str = str.gsub(/[\u{1f680}-\u{1f6ff}]/,'')

    # enclosed chars  24C2 - 1F251
    str = str.gsub(/[\u{24C2}-\u{1F251}]/, '')

    # symbols & pics
    str = str.gsub(/[\u{1f300}-\u{1f5ff}]/,'')

    # building
    str = str.gsub(/[\u{2600}-\u{26FF}]/,'')

    # symbols
    str = str.gsub(/[\u{2300}-\u{23FF}]/,'')
    str = str.gsub(/\p{Cf}/,"")
    str
  end
end
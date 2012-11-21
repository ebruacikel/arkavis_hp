class Game < ActiveRecord::Base

  has_attached_file :screenshot_1, styles: {
    thumb: '150x110',
    medium: '640x480'
  }
  has_attached_file :screenshot_2, styles: {
    thumb: '150x110',
    medium: '640x480'
  }
  has_attached_file :screenshot_3, styles: {
    thumb: '150x110',
    medium: '640x480'
  }
  has_attached_file :screenshot_4, styles: {
    thumb: '150x110',
    medium: '640x480'
  }
  has_attached_file :screenshot_5, styles: {
    thumb: '150x110',
    medium: '640x480'
  }

  has_attached_file :swf_file
  has_attached_file :unity3d_file
  
  has_attached_file :cover_screen, styles: {
    normal: '700x420'
  }
  
end

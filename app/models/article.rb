class Article < ApplicationRecord
	# for handling the upload we need to mount the uploader for image field
# :image (our field in the table for storing the image data)
# ArticleUploader (we have created it above)
mount_uploader :image, ArticleUploader
end

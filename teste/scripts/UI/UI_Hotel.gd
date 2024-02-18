extends CanvasLayer

@onready var mention_label := $mention_label as RichTextLabel

func _process(delta):
	mention_label.text = str(GlobalScripts.mention[GlobalScripts.cont_mention])

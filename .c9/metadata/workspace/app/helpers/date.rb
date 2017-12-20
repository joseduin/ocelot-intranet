{"filter":false,"title":"date.rb","tooltip":"/app/helpers/date.rb","undoManager":{"mark":30,"position":30,"stack":[[{"start":{"row":0,"column":0},"end":{"row":19,"column":3},"action":"insert","lines":["module Toastr","   def custom_bootstrap_flash","       puts \"TOAS\"","        modal = false","        flash_messages = []","        flash.each do |type, message|","            modal = true if message.include?(\"open pdfview\")","            type = type.to_sym","            type = 'success' if type == 'notice'","            type = 'error'   if type == 'alert'","            text = \"<script type=\\\"text/javascript\\\">$(function() {toastr.#{type}('#{message}');});</script>\"","            flash_messages << text.html_safe if message","        end","        if modal","            puts \"return modal\"","           return ","        end","        flash_messages.join(\"\\n\").html_safe","    end ","end"],"id":1}],[{"start":{"row":2,"column":7},"end":{"row":17,"column":43},"action":"remove","lines":["puts \"TOAS\"","        modal = false","        flash_messages = []","        flash.each do |type, message|","            modal = true if message.include?(\"open pdfview\")","            type = type.to_sym","            type = 'success' if type == 'notice'","            type = 'error'   if type == 'alert'","            text = \"<script type=\\\"text/javascript\\\">$(function() {toastr.#{type}('#{message}');});</script>\"","            flash_messages << text.html_safe if message","        end","        if modal","            puts \"return modal\"","           return ","        end","        flash_messages.join(\"\\n\").html_safe"],"id":2}],[{"start":{"row":1,"column":7},"end":{"row":1,"column":29},"action":"remove","lines":["custom_bootstrap_flash"],"id":3},{"start":{"row":1,"column":7},"end":{"row":1,"column":8},"action":"insert","lines":["d"]}],[{"start":{"row":1,"column":8},"end":{"row":1,"column":9},"action":"insert","lines":["a"],"id":4}],[{"start":{"row":1,"column":9},"end":{"row":1,"column":10},"action":"insert","lines":["t"],"id":5}],[{"start":{"row":1,"column":10},"end":{"row":1,"column":11},"action":"insert","lines":["e"],"id":6}],[{"start":{"row":1,"column":11},"end":{"row":1,"column":12},"action":"insert","lines":["_"],"id":7}],[{"start":{"row":1,"column":12},"end":{"row":1,"column":13},"action":"insert","lines":["c"],"id":8}],[{"start":{"row":1,"column":13},"end":{"row":1,"column":14},"action":"insert","lines":["o"],"id":9}],[{"start":{"row":1,"column":14},"end":{"row":1,"column":15},"action":"insert","lines":["n"],"id":10}],[{"start":{"row":1,"column":15},"end":{"row":1,"column":16},"action":"insert","lines":["v"],"id":11}],[{"start":{"row":1,"column":16},"end":{"row":1,"column":17},"action":"insert","lines":["e"],"id":12}],[{"start":{"row":1,"column":17},"end":{"row":1,"column":18},"action":"insert","lines":["r"],"id":13}],[{"start":{"row":1,"column":18},"end":{"row":1,"column":19},"action":"insert","lines":["t"],"id":14}],[{"start":{"row":1,"column":19},"end":{"row":1,"column":21},"action":"insert","lines":["()"],"id":15}],[{"start":{"row":1,"column":20},"end":{"row":1,"column":21},"action":"insert","lines":["d"],"id":16}],[{"start":{"row":2,"column":7},"end":{"row":2,"column":8},"action":"insert","lines":["d"],"id":17}],[{"start":{"row":2,"column":8},"end":{"row":2,"column":10},"action":"insert","lines":["[]"],"id":18}],[{"start":{"row":2,"column":9},"end":{"row":2,"column":10},"action":"insert","lines":["0"],"id":19}],[{"start":{"row":2,"column":10},"end":{"row":2,"column":11},"action":"insert","lines":["."],"id":20}],[{"start":{"row":2,"column":11},"end":{"row":2,"column":12},"action":"insert","lines":["."],"id":21}],[{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"insert","lines":["4"],"id":22}],[{"start":{"row":0,"column":7},"end":{"row":0,"column":13},"action":"remove","lines":["Toastr"],"id":23},{"start":{"row":0,"column":7},"end":{"row":0,"column":8},"action":"insert","lines":["D"]}],[{"start":{"row":0,"column":8},"end":{"row":0,"column":9},"action":"insert","lines":["a"],"id":24}],[{"start":{"row":0,"column":9},"end":{"row":0,"column":10},"action":"insert","lines":["t"],"id":25}],[{"start":{"row":0,"column":10},"end":{"row":0,"column":11},"action":"insert","lines":["e"],"id":26}],[{"start":{"row":0,"column":11},"end":{"row":0,"column":12},"action":"insert","lines":["U"],"id":27}],[{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"insert","lines":["t"],"id":28}],[{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"insert","lines":["i"],"id":29}],[{"start":{"row":0,"column":14},"end":{"row":0,"column":15},"action":"insert","lines":["l"],"id":30}],[{"start":{"row":0,"column":15},"end":{"row":0,"column":16},"action":"insert","lines":["s"],"id":31}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":0,"column":7},"end":{"row":0,"column":16},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1512249751101,"hash":"5c3ce7b5c9d8e340cdcc9e81c527904ee015c248"}
window.onload = function() {
		var fileInput = document.getElementById('fileInput');
		var fileDisplayArea = document.getElementById('fileDisplayArea');

		fileInput.addEventListener('change', function(e) {
			var file = fileInput.files[0];
			var textType = /text.*/;

			if (file.type.match(textType)) {
				var reader = new FileReader();

				reader.onload = function(e) {
					fileDisplayArea.innerText = reader.result;
				}

				reader.readAsText(file);	
			} else {
				fileDisplayArea.innerText = "File not supported!";
			}
		});
}
// Loop through the FileList and render image files as thumbnails.
    for (var i = 0, f; f = files[i]; i++) {

      reader.readAsText(readFile, "UTF-16");
      // Only process image files.
      if (!f.type.match('image.*')) {
        continue;
      }

      var reader = new FileReader();

      // Closure to capture the file information.
      reader.onload = (function(theFile) {
        return function(e) {
          // Render thumbnail.
          var span = document.createElement('span');
          span.innerHTML = ['<img class="thumb" src="', e.target.result,
                            '" title="', escape(theFile.name), '"/>'].join('');
        //var text = reader.result;
        //alert(text);
          document.getElementById('list').insertBefore(span, null);
        };
      })(f);

      // Read in the image file as a data URL.
      reader.readAsDataURL(f);
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	function handleFileSelect(evt) {

      var file = document.getElementById('files').files[0];
      var reader = new FileReader();     
      reader.readAsText(file, 'UTF-8');
      reader.onload = function loaded(evt) {  
        // Obtain the read file data    
        var fileString = evt.target.result;
        // Handle UTF-16 file dump
        alert(fileString);
        if(utils.regexp.isChinese(fileString)) {
          //Chinese Characters + Name validation
        }else {
            // run other charset test
        }
        // xhr.send(fileString)     
      }

    }

document.getElementById('files').addEventListener('change', handleFileSelect, false);

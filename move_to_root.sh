#!/bin/bash

# Move all files from www.sugosure.com to root
echo "Moving files from www.sugosure.com to root directory..."
cp -r www.sugosure.com/* .

# Update the root index.html to not redirect
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SugoSure</title>
    <script>
        // Redirect to the actual index page
        window.location.href = "index.html";
    </script>
</head>
<body>
    <h1>SugoSure</h1>
    <p>If you are not redirected automatically, <a href="index.html">click here</a>.</p>
</body>
</html>
EOF

echo "Files moved successfully!"
echo "$(date): Reorganized files for GitHub Pages" >> progress-log.txt

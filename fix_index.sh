#!/bin/bash

# Update the root index.html to point to the correct page
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SugoSure - Home</title>
    <meta http-equiv="refresh" content="0;url=https://norvinteo.github.io/sugosure/index.html:cdn.prod.website-files.com/62e767969339c24c1907512c/css/sugosure.webflow.shared.ec73514ae.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .loader {
            border: 5px solid #f3f3f3;
            border-top: 5px solid #3498db;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            animation: spin 1s linear infinite;
            margin: 20px auto;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <h1>SugoSure</h1>
    <p>Loading the SugoSure website...</p>
    <div class="loader"></div>
    <p>If you are not redirected automatically, <a href="index.html:cdn.prod.website-files.com/62e767969339c24c1907512c/css/sugosure.webflow.shared.ec73514ae.min.css">click here</a>.</p>
</body>
</html>
EOF

echo "Updated index.html to fix redirection issue!"
echo "$(date): Fixed index.html redirection for GitHub Pages" >> progress-log.txt

<!DOCTYPE html>
<html>
<head>
    <title>New Rupture Burst Test</title>
    <script>
        function fetchData(url, elementId) {
            fetch(url)
                .then(response => response.json())
                .then(data => {
                    const select = document.getElementById(elementId);
                    data.forEach(item => {
                        const option = document.createElement('option');
                        option.value = item;
                        option.textContent = item;
                        select.appendChild(option);
                    });
                })
                .catch(error => console.error('Error fetching data:', error));
        }

        document.addEventListener('DOMContentLoaded', () => {
            fetchData('rupture_handler.php?table=type', 'type');
            fetchData('rupture_handler.php?table=element_raw_size', 'size');
            fetchData('rupture_handler.php?table=materials&db=koaliumi_rupturium_db&username=koaliumi_editor&password=koala551364', 'name');
            fetchData('rupture_handler.php?table=materials&db=koaliumi_rupturium_db', 'name');
            fetchData('rupture_handler.php?table=materials&db=koaliumi_rupturium_db', 'name');
        });
    </script>
</head>
<body>
    <h1>New Rupture Burst Test</h1>
    <form action="rupture_burst_data_handler.php" method="post">
        <label for="type">Type:</label>
        <select id="type" name="type"></select><br>

        <label for="size">Size:</label>
        <select id="size" name="size"></select><br>

        <label>Layers:</label>
        


            <h3>Main</h3>
            <label for="main_material">Material:</label>
            <select id="main_material" name="main_material"></select><br>
            <label for="main_thickness">Thickness:</label>
            <input type="number" id="main_thickness" name="main_thickness" step="0.05" min="0.05" max="5.5"><br>

            <h3>Vacuum</h3>
            <label for="vacuum_material">Material:</label>
            <select id="vacuum_material" name="vacuum_material"></select><br>
            <label for="vacuum_thickness">Thickness:</label>
            <input type="number" id="vacuum_thickness" name="vacuum_thickness" step="0.05" min="0.05" max="5.5"><br>

            <h3>Seal</h3>
            <label for="seal_material">Material:</label>
            <select id="seal_material" name="seal_material"></select><br>
            <label for="seal_thickness">Thickness:</label>
            <input type="number" id="seal_thickness" name="seal_thickness" step="0.05" min="0.05" max="5.5"><br>
        </div>

        <label for="burst_temp">Burst Temperature:</label>
        <input type="number" id="burst_temp" name="burst_temp" step="0.1" min="0.01" max="221"><br>

        <label for="burst_temp_range">Burst Temperature Range:</label>
        <input type="number" id="burst_temp_range" name="burst_temp_range" step="1" min="-270" max="550"><br>

        <button type="submit">Submit</button>
    </form>
</body>
</html>

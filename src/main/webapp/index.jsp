<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="icon" href="./src/img/icon.jpg">
    <link rel="stylesheet" type="text/css" href="./src/css/style.css">

    <title>Web #2</title>
</head>
<body>
<table id="main-grid">
    <tr>
        <!-- Header -->
        <td id="header-plate" colspan="2">
            <span class="left-aligned">Терновский Илья (P32302)</span>
            <span class="right-aligned">Вариант 32456</span>
        </td>
    </tr>

    <tr>
        <!-- Graph -->
        <td class="content-plate" id="graph-plate">
            <div class="plate-top">
                <h2 class="plate-top-title">Координатная плоскость на которую можно нажать</h2>
            </div>

            <div class="image-container">
                <canvas height="300" width="300" id="graph"> </canvas>
            </div>
        </td>
        <!-- Table -->
    </tr>

    <tr>
        <!-- Values -->
        <td class="content-plate" id="values-plate">
            <div class="plate-top">
                <h2 class="plate-top-title">Значения</h2>
            </div>

            <form id="input-form" action="" method="POST">
                <table id="input-grid">
                    <!-- X Value -->
                    <tr>
                        <td class="input-grid-label">
                            <label>X:</label>
                        </td>

                        <td class="input-grid-value x-radio-group">
                            <label><input class="x-cb" type="checkbox" name="xval" value="-2" >-2</label>
                            <label><input class="x-cb" type="checkbox" name="xval" value="-1.5" />-1.5</label>
                            <label><input class="x-cb" type="checkbox" name="xval" value="-1" />-1</label>
                            <label><input class="x-cb" type="checkbox" name="xval" value="-0.5" />-0.5</label>
                            <label><input class="x-cb" type="checkbox" name="xval" value="0" checked="checked"/>0</label>
                            <label><input class="x-cb" type="checkbox" name="xval" value="0.5" />0.5</label>
                            <label><input class="x-cb" type="checkbox" name="xval" value="1" />1</label>
                            <label><input class="x-cb" type="checkbox" name="xval" value="1.5" />1.5</label>
                            <label><input class="x-cb" type="checkbox" name="xval" value="2" />2</label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <div class="x-error-box">Пожалуйста выберите X</div>
                        </td>
                    </tr>

                    <!-- Y Value -->
                    <tr>
                        <td class="input-grid-label">
                            <label for="y-text-input">Y:</label>
                        </td>

                        <td class="input-grid-value">
                            <input class="text-input" id="y-text-input" type="text" name="yval" maxlength="10"
                                   autocomplete="off" placeholder="Number from -3 to 5...">
                        </td>
                    <tr>
                        <td></td>
                        <td>
                            <div class="y-error-box">Y должен быть числом от -3 до 5</div>
                        </td>
                    </tr>

                    <!-- R Value -->
                    <tr>
                        <td class="input-grid-label">
                            <label for="r-select"> R:</label>
                        </td>
                        <td class="input-grid-value" >
                            <select class="text-input" id="r-select" name="rval" form="input-form">
                                <option value="0" selected disabled hidden>Выберите значение R</option>
                                <option value="1">1</option>
                                <option value="1.5">1.5</option>
                                <option value="2">2</option>
                                <option value="2.5">2.5</option>
                                <option value="3">3</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <div class="r-error-box">R должен быть целочисленным числом от 1 до 4</div>
                        </td>
                    </tr>

                    <!-- Buttons -->
                    <tr>
                        <td colspan="2">
                            <div class="buttons">
                                <button class="glow-on-hover" type="submit" value="Submit">Submit</button>
                                <button class="glow-on-hover" type="reset" value="Reset">Reset</button>
                            </div>
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
<div hidden><jsp:include page="results.jsp"/></div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="./src/js/main.js" type="text/javascript"></script>
<script src="./src/js/graph.js" type="text/javascript"></script>
</body>

</html>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/home.css">
</head>
<body>
<section class="content">
    <div class="row col-lg-12 justify-content-center">
        <h1 class="title">Test task</h1>
    </div>
    <div class="row">
        <form class="form" method="post" action="/">

            <div>
                <label class="form__label">
                    Label:
                </label>
                <input class="form__input" type="text" name="label" placeholder="Enter label">
            </div>
            <div>
                <label class="form__label">Type Field:</label>
                <select class="form__select" name="select" id="select" onchange="change(this.form)">
                    <option value="select">
                        select
                    </option>
                    <option value="input">
                        input
                    </option>
                    <option value="textarea">
                        textarea
                    </option>
                    <option value="checkbox">
                        checkbox
                    </option>
                </select>

                <script type="text/javascript">
                    var select, value, text;

                    function change(f) {
                        select = document.getElementById("select");
                        value = select.options[select.selectedIndex].value;
                        text = select.options[select.selectedIndex].text;
                        if ((text == "select") || (text == "checkbox")) {
                            f.options.disabled = 0
                        } else {
                            f.options.disabled = 1
                        }
                    }
                </script>


                <div>
                    <label class="form__label">
                        Style (css):
                    </label>
                    <br><textarea class="form__textarea" name="style" type="text" placeholder="Example:
color:red;
font-size: 12px"></textarea>
                </div>
                <div>
                    <label class="form__label">
                        (Select / Checkbox) Options:
                    </label>
                    <br><textarea class="form__textarea" type="text" name="options" placeholder="Example:
option1, option2, option3"></textarea>
                </div>
                <button class="btn btn-primary" type="submit">
                    Submit
                </button>
            </div>
        </form>
        <div class="customForm ">
            <#list array as item>

                <#if item.typeField.toString() == "SELECT">
                    <div class="custom">

                        <form class="label${item.id}">
                            <style>
                                .${"label${item.id}"} {
                                ${item.style}
                                }
                            </style>
                            <label>
                                ${item.labelField}
                            </label>
                            <${item.typeField.toString()}>

                            <#list item.directory?split(",") as option>
                                <option>
                                    ${option}
                                </option>
                            </#list>

                            <${"/"+item.typeField}
                        </form>
                    </div>
                <#elseif item.typeField.toString() == "TEXTAREA">

                    <div class="custom">
                        <form class="label${item.id}">
                            <style>
                                .${"label${item.id}"} {
                                ${item.style}
                                }
                            </style>
                            <label>
                                ${item.labelField}
                            </label>
                            <${item.typeField.toString()}>
                            <${"/"+item.typeField.toString()}
                        </form>
                    </div>
                <#elseif item.typeField.toString() == "INPUT">
                    <div class="custom">
                        <form class="label${item.id}">
                            <style>
                                .${"label${item.id}"} {
                                ${item.style}
                                }
                            </style>
                            <label>
                                ${item.labelField}
                            </label>
                            <${item.typeField.toString()} class="${item.labelField+item.id}">
                        </form>
                    </div>
                <#elseif item.typeField.toString() == "CHECKBOX">
                    <div class="custom">

                        <form class="label${item.id}">
                            <style>
                                .${"label${item.id}"} {
                                ${item.style}
                                }
                            </style>
                            <label>
                                ${item.labelField}
                            </label>
                            <#if item.directory??>
                                <#list item.directory?split(",") as option>
                                    <br><input type="${item.typeField.toString()}" value="${option}">${option}
                                </#list>

                            <#else>
                                <input type="${item.typeField.toString()}" value="${item.labelField}">

                            </#if>
                        </form>
                    </div>
                </#if>

            </#list>
        </div>
    </div>
</section>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>网络流量</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="./assets/css/style.css">

</head>

<body>
    <nav class="navbar sticky-top navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">网络流量 ({$current_interface})</a>

            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    选择接口
                </button>

                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
{foreach from=$interface_list item=value}
                    <a class="dropdown-item" href="?i={$value}">{$value}</a>
{/foreach}
                </div>
            </div>
        </div>
    </nav>

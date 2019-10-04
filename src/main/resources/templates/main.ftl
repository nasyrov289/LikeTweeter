<html>
<body>
    <div>
        <form action="/logout" method="post">
            <input type="submit" value="Sign Out"/>
            <input type="hidden" name="_csrf" value="{{_csrf.token}}">
        </form>
    </div>
    <div>
        <form method="post" action="main">
            <input type="text" name="text" placeholder="Введите сообщение"/>
            <input type="text" name="tag" placeholder="Тэг">
            <input type="hidden" name="_csrf" value="{{_csrf.token}}"/>
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список сообщений
        <form method="post" action="filter">
            <input type="text" name="filter">
            <input type="hidden" name="_csrf" value="{{_csrf.token}}">
            <button type="submit">Найти</button>
        </form>
        {{#messages}}
            <div>
                <b>{{id}}</b>
                <span>{{text}}</span>
                <i>{{tag}}</i>
                <strong>{{authorName}}</strong>
            </div>
        {{/messages}}
    </div>
</body>
</html>
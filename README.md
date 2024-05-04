## Начало работы

Для начала работы востановите базу данных которая находиться по пути "./DataBase/BackUp.sql" в СУБД PostgreSQL 16.X

В "./aspnet/config.cs" заполнить данные для бд
```
public static class Config
{
    public static string Host = "localhost";
    public static string Username = "postgres";
    public static string Password = "root";
    public static string DataBase = "med";
}
```

## Документация

Для ее запуска нужен DocFX

```
dotnet tool update -g docfx
```

Соберите проект

Для запуска и просмотра введите

```
docfx --serve aspnet/docfx.json
```
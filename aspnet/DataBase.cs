// ***********************************************************************
// Assembly         : aspnet
// Author           : fasda
// Created          : 05-04-2024
//
// Last Modified By : fasda
// Last Modified On : 05-04-2024
// ***********************************************************************
// <copyright file="DataBase.cs" company="aspnet">
//     Copyright (c) . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************
using Npgsql;
using Newtonsoft.Json;
using System.Drawing;
using System.Diagnostics;
/// <summary>
/// Class DataBase.
/// </summary>
public class DataBase
{
    /// <summary>
    /// Initializes a new instance of the <see cref="DataBase"/> class.
    /// </summary>
    public DataBase()
    {
        _conn = $"host={Config.Host};username={Config.Username};password={Config.Password};database={Config.DataBase};port={Config.Port}";
    }
    /// <summary>
    /// The connection
    /// </summary>
    private string _conn;
    /// <summary>
    /// Отправка запроса в виде INSERT, UPDATE, DELETE
    /// </summary>
    /// <param name="query">The query.</param>
    /// <returns>System.Int32.</returns>
    public int SendData(string query)
    {
        using var con = new Npgsql.NpgsqlConnection(_conn);
        con.Open();
        using var command = new NpgsqlCommand(query, con);
        return command.ExecuteNonQuery();
    }
    /// <summary>
    /// Отправка запроса на подобии SELECT с возвратом информации в виде дву мерного массива
    /// </summary>
    /// <param name="query">The query.</param>
    /// <returns>List&lt;List&lt;System.String&gt;&gt;.</returns>
    public List<List<string>> GetData(string query)
    {
        List<List<string>> result = new List<List<string>>();
        using var con = new Npgsql.NpgsqlConnection(_conn);
        con.Open();
        using var command = new NpgsqlCommand(query, con);

        using(var reader = command.ExecuteReader())
        {
            while (reader.Read())
            {
                List<string> values = new List<string>();
                for(int i = 0; i < reader.FieldCount; i++)
                {
                    values.Add(reader.GetValue(i).ToString());
                }
                result.Add(values);
            }
        }
        return result;
    }
}
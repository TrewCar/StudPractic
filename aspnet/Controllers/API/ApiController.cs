// ***********************************************************************
// Assembly         : aspnet
// Author           : fasda
// Created          : 05-04-2024
//
// Last Modified By : fasda
// Last Modified On : 05-04-2024
// ***********************************************************************
// <copyright file="ApiController.cs" company="aspnet">
//     Copyright (c) . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************
using aspnet.Controllers.API.Data;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace aspnet.Controllers.API
{
    /// <summary>
    /// Class ApiController.
    /// Implements the <see cref="Controller" />
    /// </summary>
    /// <seealso cref="Controller" />
    public class ApiController : Controller
    {
        /// <summary>
        /// API - для получения списка складов
        /// </summary>
        /// <returns>IActionResult.</returns>
        [HttpGet]
        public IActionResult Sklad()
        {
            var data = new DataBase().GetData("SELECT * FROM sklad");
            List<Sklad> list = new List<Sklad>();
            foreach(var item in data)
            {
                list.Add(new Data.Sklad() { 
                    id = int.Parse(item[0]),
                    name = item[1]
                });
            }
            return Ok(JsonConvert.SerializeObject(list));
        }
        /// <summary>
        /// API - для получения списка препоратов определенного склада
        /// </summary>
        /// <param name="id">ID склада</param>
        /// <returns>IActionResult.</returns>
        [HttpGet]
        public IActionResult GetPreporat(int id)
        {
            var data = new DataBase().GetData($"SELECT * FROM preporat WHERE id_skald = {id}");
            List<Preporat> list = new List<Preporat>();
            foreach (var item in data)
            {
                list.Add(new Data.Preporat()
                {
                    id = int.Parse(item[0]),
                    name = item[1],
                    id_sklad = int.Parse(item[2]),
                    count = int.Parse(item[3])
                });
            }
            return Ok(JsonConvert.SerializeObject(list));
        }
        /// <summary>
        /// API - для списания препоратов
        /// </summary>
        /// <param name="id">ID препората</param>
        /// <param name="count">Колличество данного препората</param>
        /// <param name="why">Причина списания</param>
        /// <returns>IActionResult.</returns>
        [HttpGet]
        public IActionResult SpisanPreporat(int id, int count, string why)
        {
            var data = new DataBase().GetData($"SELECT * FROM preporat WHERE id = {id}");
            if(data.Count == 0)
            {
                return BadRequest("Не найден");
            }
            var preporat = new Data.Preporat()
            {
                id = int.Parse(data[0][0]),
                name = data[0][1],
                id_sklad = int.Parse(data[0][2]),
                count = int.Parse(data[0][3])
            };

            if(preporat.count < count)
            {
                return BadRequest("В списании кол-во больше чем на самом деле");
            }
            new DataBase().SendData($"UPDATE preporat SET count = count - {count} WHERE id = {id}");
            new DataBase().SendData($"INSERT INTO spisan VALUES (default, 'Препорат {preporat.name} списан со скалада {preporat.id_sklad} в колличестве {count}', '{why}')");
            return Ok();
        }
    }
}

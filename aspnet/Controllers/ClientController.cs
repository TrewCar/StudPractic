// ***********************************************************************
// Assembly         : aspnet
// Author           : fasda
// Created          : 05-04-2024
//
// Last Modified By : fasda
// Last Modified On : 05-04-2024
// ***********************************************************************
// <copyright file="ClientController.cs" company="aspnet">
//     Copyright (c) . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************
using aspnet.Models;
using Microsoft.AspNetCore.Mvc;

namespace aspnet.Controllers
{
    /// <summary>
    /// Class ClientController.
    /// Implements the <see cref="Controller" />
    /// </summary>
    /// <seealso cref="Controller" />
    public class ClientController : Controller
    {
        /// <summary>
        /// Возврат представления о списке пользователей
        /// </summary>
        /// <returns>IActionResult.</returns>
        public IActionResult Index()
        {
            return View(new ClientModel());
        }
        /// <summary>
        /// Возврат представления о назначении на гостополизцию
        /// </summary>
        /// <returns>IActionResult.</returns>
        public IActionResult Gostopolize()
        {
            return View(new ClientModel());
        }
        /// <summary>
        /// Возврат представления о просмотре конкретного пользователя
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>IActionResult.</returns>
        public IActionResult ViewClient(int id)
        {
            return View(new ClientModel(id));
        }
        /// <summary>
        /// Возврат представления о регистрации пользователя
        /// </summary>
        /// <returns>IActionResult.</returns>
        public IActionResult RegIn()
        {
            return View(new ClientModel());
        }
        /// <summary>
        /// API - точка API для получения информации о пользователя на гостополизацию
        /// </summary>
        /// <param name="id">ID пациента</param>
        /// <returns>IActionResult.</returns>
        [HttpGet]
        public IActionResult GetInfoUser(int id)
        {
            return Json(new ClientModel().GetInfoMedCardByUser(id));
        }
    }
}

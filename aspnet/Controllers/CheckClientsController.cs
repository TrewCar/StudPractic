// ***********************************************************************
// Assembly         : aspnet
// Author           : fasda
// Created          : 05-04-2024
//
// Last Modified By : fasda
// Last Modified On : 05-04-2024
// ***********************************************************************
// <copyright file="CheckClientsController.cs" company="aspnet">
//     Copyright (c) . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************
using aspnet.Models;
using Microsoft.AspNetCore.Mvc;

namespace aspnet.Controllers
{
    /// <summary>
    /// Class CheckClientsController.
    /// Implements the <see cref="Controller" />
    /// </summary>
    /// <seealso cref="Controller" />
    public class CheckClientsController : Controller
    {
        /// <summary>
        /// Возврат представления о коечном фонде
        /// </summary>
        /// <returns>IActionResult.</returns>
        public IActionResult Index()
        {
            return View();
        }
        /// <summary>
        /// Возврат представления о заполнености коечного фонда
        /// </summary>
        /// <returns>IActionResult.</returns>
        public IActionResult DragDrop()
        {
            return View(new KoechModel());
        }
        /// <summary>
        /// API - точка API для управления койкой
        /// Для создания
        /// </summary>
        /// <param name="set_koika">Особый код койки возвращаемый из фронтентой части</param>
        /// <returns>IActionResult.</returns>
        public IActionResult CreateKoika(string set_koika)
        {
            KoechModel model = new KoechModel();
            model.SaveComnat(set_koika);
            return Ok();
        }
        /// <summary>
        /// API - точка API для управления койкой
        /// Для удаления
        /// </summary>
        /// <param name="set_koika">Особый код койки возвращаемый из фронтентой части</param>
        /// <returns>IActionResult.</returns>
        public IActionResult RemoveKoika(string set_koika)
        {
            KoechModel model = new KoechModel();
            model.RemoveComnat(set_koika);
            return Ok();
        }
        /// <summary>
        /// API - точка API для управления койкой
        /// Для перемещения койки
        /// </summary>
        /// <param name="unset_koika">Особый код койки возвращаемый из фронтентой части - которая удаяется</param>
        /// <param name="set_koika">Особый код койки возвращаемый из фронтентой части - которая добавляется</param>
        /// <returns>IActionResult.</returns>
        public IActionResult ReplaceKoika(string unset_koika, string set_koika)
        {
            KoechModel model = new KoechModel();
            model.ReplaceComnat(unset_koika, set_koika);
            return Ok();
        }
    }
}

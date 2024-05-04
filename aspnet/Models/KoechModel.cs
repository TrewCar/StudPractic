// ***********************************************************************
// Assembly         : aspnet
// Author           : fasda
// Created          : 05-04-2024
//
// Last Modified By : fasda
// Last Modified On : 05-04-2024
// ***********************************************************************
// <copyright file="KoechModel.cs" company="aspnet">
//     Copyright (c) . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************
namespace aspnet.Models
{
    /// <summary>
    /// Class KoechModel.
    /// </summary>
    public class KoechModel
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="KoechModel"/> class.
        /// </summary>
        public KoechModel() { }
        /// <summary>
        /// Gets the list komnat.
        /// </summary>
        /// <returns>List&lt;List&lt;System.String&gt;&gt;.</returns>
        /// <font color="red">Badly formed XML comment.</font>
        public List<List<string>> GetListKomnat()
        {
            return new DataBase().GetData("SELECT * FROM room_control");
        }
        /// <summary>
        /// Сохранение пациента на определленной койке
        /// </summary>
        /// <param name="set_koika">Особый код койки возвращаемый из фронтентой части</param>
        public void SaveComnat(string set_koika)
        {
            var db = new DataBase();
            db.SendData($"INSERT INTO room_control VALUES ('{set_koika}')");
        }
        /// <summary>
        /// Выселение пациента из коечного фонда
        /// </summary>
        /// <param name="unset_koika">Особый код койки возвращаемый из фронтентой части</param>
        public void RemoveComnat(string unset_koika)
        {
            var db = new DataBase();
            db.SendData($"DELETE FROM room_control WHERE name = '{unset_koika}'");
        }
        /// <summary>
        /// Перемещение койки
        /// </summary>
        /// <param name="unset_koika">Особый код койки возвращаемый из фронтентой части - которая удаяется</param>
        /// <param name="set_koika">Особый код койки возвращаемый из фронтентой части - которая добавляется</param>
        public void ReplaceComnat(string unset_koika, string set_koika)
        {
            RemoveComnat(unset_koika);
            SaveComnat(set_koika);
        }
    }
}

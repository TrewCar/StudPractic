// ***********************************************************************
// Assembly         : aspnet
// Author           : fasda
// Created          : 05-04-2024
//
// Last Modified By : fasda
// Last Modified On : 05-04-2024
// ***********************************************************************
// <copyright file="ClientModel.cs" company="aspnet">
//     Copyright (c) . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************
namespace aspnet.Models
{
    /// <summary>
    /// Модель клиента
    /// </summary>
    public class ClientModel
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientModel"/> class.
        /// </summary>
        public ClientModel() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientModel"/> class.
        /// </summary>
        /// <param name="id">The identifier.</param>
        public ClientModel(int id) 
        {
            this.Id = id;
        }
        /// <summary>
        /// id пациента
        /// </summary>
        /// <value>The identifier.</value>
        public int Id { get; set; }
        /// <summary>
        /// Получение списка всех пользователей из базы данных
        /// </summary>
        /// <returns>List&lt;List&lt;System.String&gt;&gt;.</returns>
        public List<List<string>> GetClients()
        {
            var db = new DataBase();
            return db.GetData("SELECT * FROM client");
        }
        /// <summary>
        /// Получение конкретного пользователя по его ID
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>List&lt;List&lt;System.String&gt;&gt;.</returns>
        public List<List<string>> GetClientBuyID(int id)
        {
            var db = new DataBase();
            return db.GetData($"SELECT * FROM client WHERE id = {id}");
        }
        /// <summary>
        /// Получение информации о мед карте определенного пользователя
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>List&lt;List&lt;System.String&gt;&gt;.</returns>
        public List<List<string>> GetInfoMedCardByUser(int id)
        {
            var db = new DataBase();
            return db.GetData($"SELECT * FROM med_card WHERE id_client = {id}");
        }
    }
}

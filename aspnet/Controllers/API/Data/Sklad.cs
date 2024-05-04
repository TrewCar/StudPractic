// ***********************************************************************
// Assembly         : aspnet
// Author           : fasda
// Created          : 05-04-2024
//
// Last Modified By : fasda
// Last Modified On : 05-04-2024
// ***********************************************************************
// <copyright file="Sklad.cs" company="aspnet">
//     Copyright (c) . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************
using System.Text.Json.Serialization;

namespace aspnet.Controllers.API.Data
{
    /// <summary>
    /// Struct Sklad
    /// </summary>
    public struct Sklad
    {
        /// <summary>
        /// The identifier
        /// </summary>
        [JsonPropertyName("id")]
        public int id;
        /// <summary>
        /// The name
        /// </summary>
        [JsonPropertyName("name")]
        public string name;
    }
}

// ***********************************************************************
// Assembly         : aspnet
// Author           : fasda
// Created          : 05-04-2024
//
// Last Modified By : fasda
// Last Modified On : 05-04-2024
// ***********************************************************************
// <copyright file="Preporat.cs" company="aspnet">
//     Copyright (c) . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************
using System.Text.Json.Serialization;

namespace aspnet.Controllers.API.Data
{
    /// <summary>
    /// Struct Preporat
    /// </summary>
    public struct Preporat
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
        /// <summary>
        /// The identifier sklad
        /// </summary>
        [JsonPropertyName("id_sklad")]
        public int id_sklad;
        /// <summary>
        /// The count
        /// </summary>
        [JsonPropertyName("count")]
        public int count;
    }
}

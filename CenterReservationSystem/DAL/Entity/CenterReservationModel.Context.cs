﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CenterReservation.DL.Entity
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using CenterReservation.DL.DomainModel;
    
    public partial class CenterReservationEntities : DbContext
    {
        public CenterReservationEntities()
            : base("name=CenterReservationEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<ACPatient> ACPatients { get; set; }
        public DbSet<BDPhysician> BDPhysicians { get; set; }
        public DbSet<BDPhysicianSalary> BDPhysicianSalaries { get; set; }
        public DbSet<BDVisitPrice> BDVisitPrices { get; set; }
        public DbSet<BDVisitType> BDVisitTypes { get; set; }
        public DbSet<TRANVisit> TRANVisits { get; set; }
    }
}

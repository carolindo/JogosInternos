using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace JogosInternos.Controllers
{
    public class InscricaoController : Controller
    {        
        public ActionResult Equipe()
        {
            ViewBag.Title = "Cadastro Equipe";

            return View();
        }
        public ActionResult Individual()
        {
            ViewBag.Title = "Cadastro Individual";

            return View();
        }
        public ActionResult Torcedor()
        {
            ViewBag.Title = "Cadastro Torcedor";

            return View();
        }
        public ActionResult Administrador()
        {
            ViewBag.Title = "Cadastro Administrador";

            return View();
        }
    }
}

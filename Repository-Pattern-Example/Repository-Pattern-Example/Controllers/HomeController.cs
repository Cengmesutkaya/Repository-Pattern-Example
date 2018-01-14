using Repository;
using Repository_Pattern_Example.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Repository_Pattern_Example.Controllers
{
    public class HomeController : Controller
    {
        GenericRepository<Student> _genericRepository = new GenericRepository<Student>(new SchoolEntities());

        public ActionResult Index()
        {
            return View(_genericRepository.GetAll());
        }
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(Student student)
        {
            if (ModelState.IsValid)
            {
                await _genericRepository.InsertAsync(student);
                return RedirectToAction("Index");
            }
            return View(student);
        }

        public async Task<ActionResult> Edit(int id)
        {
            if (id == 0)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = await _genericRepository.GetByIdAsync(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            return View(student);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(Student student)
        {

            if (ModelState.IsValid)
            {
                await _genericRepository.UpdateAsync(student);
                return RedirectToAction("Index");
            }
            return View(student);
        }

        public async Task<ActionResult> Delete(Int32 id)
        {
            Student student = await _genericRepository.GetByIdAsync(id);
            await _genericRepository.DeleteAsync(student);
            return RedirectToAction("Index");
        }
    }
}
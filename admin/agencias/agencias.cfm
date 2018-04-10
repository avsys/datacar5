<!--- <cfinclude template = "../includes/i-admin.cfm"> --->

<!--- <link href="../../css/dataTables.bootstrap4.min.css" rel="stylesheet"> --->
<style media="screen">
div.table-responsive>div.dataTables_wrapper>div.row:first-child{
  margin-top: 3px;
}
.stripe1 {
    background-color: #E8E8E8;
}
.stripe2 {
    background-color: #EEEEEE;
    border-bottom: solid #EEEEEE;
}
table tbody tr:hover:not(.selected){
  background: #ECEFF1 !important;
}
</style>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputEmail4">Email</label>
              <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
            </div>
            <div class="form-group col-md-6">
              <label for="inputPassword4">Password</label>
              <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
            </div>
          </div>
          <div class="form-group">
            <label for="inputAddress">Address</label>
            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
          </div>
          <div class="form-group">
            <label for="inputAddress2">Address 2</label>
            <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputCity">City</label>
              <input type="text" class="form-control" id="inputCity">
            </div>
            <div class="form-group col-md-4">
              <label for="inputState">State</label>
              <select id="inputState" class="form-control">
                <option selected>Choose...</option>
                <option>...</option>
              </select>
            </div>
            <div class="form-group col-md-2">
              <label for="inputZip">Zip</label>
              <input type="text" class="form-control" id="inputZip">
            </div>
          </div>
          <div class="form-group">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="gridCheck">
              <label class="form-check-label" for="gridCheck">
                Check me out
              </label>
            </div>
          </div>
          <button type="submit" class="btn btn-primary">Sign in</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<div class="row mt-3">
  <div class="col">
    <h3>Agencias</h3>
  </div>
</div>
<div class="row mt-3">
  <div class="col">
    <button type="button" class="btn btn-outline-primary" name="button" data-toggle="modal" data-target="#exampleModal">Agregar</button>
    <button type="button" class="btn btn-outline-primary disabled" name="button" id="btn_editar">Editar</button>
    <button type="button" class="btn btn-outline-danger disabled" name="button" id="btn_borrar">Borrar</button>
  </div>
</div>
<div class="row mt-3">
  <div class="col-lg-12 table-responsive">
    <table id="example" class="table hover table-striped" cellspacing="0" width="100%">
      <thead>
          <tr>
              <th style="text-align:center"><input type="checkbox" id="select-all"></th>
              <th>Name</th>
              <th>Salary</th>
              <th>Office</th>
              <th>Position</th>
              <th>Status</th>
              <th>Active</th>
          </tr>
      </thead>
    </table>
  </div>
</div>
<div class="row">
  <div class="col">
    <button type="button" name="button" id="selected">Seleccionados</button>
  </div>
</div>


<script>
    function Employee ( name, position, salary, office ) {
    this.name = name;
    this.position = position;
    this.salary = salary;
    this._office = office;

    this.office = function () {
        return this._office;
    }
};

 var table = $('#example').DataTable( {
   responsive: true,
   autoWidth: true,
  columnDefs: [ {
    orderable: false,
    className: 'select-checkbox',
    targets:   0
  } ],
  select: {
      style:    'multi',
      selector: 'td:first-child'
  },
  stripeClasses:['stripe1','stripe2'],
  order: [[ 1, 'asc' ]],
    data: [
      {"name":"Rozanne","salary":"$7.22","office":"Medical/Dental Instruments","position":"Grocery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Rania","salary":"$6.02","office":"Computer Software: Prepackaged Software","position":"Shoes","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Carroll","salary":"$0.73","office":"Packaged Foods","position":"Music","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Demetria","salary":"$3.77","office":"Home Furnishings","position":"Home","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Tarrah","salary":"$4.39","office":"n/a","position":"Health","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Pippo","salary":"$6.17","office":"Real Estate","position":"Kids","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Benedetto","salary":"$2.24","office":"Consumer Specialties","position":"Beauty","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Peter","salary":"$4.84","office":"n/a","position":"Health","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Valentia","salary":"$7.20","office":"n/a","position":"Music","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Iona","salary":"$1.36","office":"n/a","position":"Books","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Wheeler","salary":"$7.22","office":"n/a","position":"Movies","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Lamar","salary":"$1.29","office":"n/a","position":"Books","position":"Movies","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Ollie","salary":"$3.01","office":"Oil Refining/Marketing","position":"Garden","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Dyann","salary":"$8.21","office":"Real Estate Investment Trusts","position":"Outdoors","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Hamel","salary":"$9.11","office":"Other Specialty Stores","position":"Beauty","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Elwira","salary":"$8.58","office":"Steel/Iron Ore","position":"Automotive","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Friedrich","salary":"$1.58","office":"Major Chemicals","position":"Beauty","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Gerianna","salary":"$5.22","office":"Other Specialty Stores","position":"Health","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Bev","salary":"$2.06","office":"n/a","position":"Computers","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Myca","salary":"$9.78","office":"Publishing","position":"Baby","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Xenia","salary":"$9.85","office":"Diversified Commercial Services","position":"Home","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Lorettalorna","salary":"$7.46","office":"n/a","position":"Games","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Ebonee","salary":"$3.98","office":"Major Banks","position":"Baby","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Noella","salary":"$3.67","office":"Major Pharmaceuticals","position":"Kids","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Isidoro","salary":"$6.94","office":"Major Chemicals","position":"Home","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Wat","salary":"$9.23","office":"n/a","position":"Garden","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Halsey","salary":"$0.98","office":"Food Distributors","position":"Baby","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Winfield","salary":"$1.15","office":"Business Services","position":"Outdoors","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Domini","salary":"$6.31","office":"Business Services","position":"Movies","position":"Movies","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Dennet","salary":"$1.95","office":"Biotechnology: Biological Products (No Diagnostic Substances)","position":"Outdoors","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Tedd","salary":"$4.59","office":"Hotels/Resorts","position":"Electronics","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Sal","salary":"$7.24","office":"Other Consumer Services","position":"Industrial","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Ethelind","salary":"$4.05","office":"Telecommunications Equipment","position":"Baby","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Drud","salary":"$3.49","office":"n/a","position":"Jewelery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Weylin","salary":"$4.31","office":"n/a","position":"Movies","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Adora","salary":"$9.64","office":"n/a","position":"Automotive","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Valma","salary":"$0.53","office":"Packaged Foods","position":"Tools","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Maighdiln","salary":"$7.78","office":"Investment Bankers/Brokers/Service","position":"Jewelery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Dionne","salary":"$4.77","office":"Savings Institutions","position":"Garden","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Thebault","salary":"$7.26","office":"Major Banks","position":"Music","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Kin","salary":"$1.83","office":"Hotels/Resorts","position":"Toys","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Tull","salary":"$2.51","office":"Major Pharmaceuticals","position":"Books","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Aurlie","salary":"$7.56","office":"Precious Metals","position":"Music","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Hyacinthie","salary":"$5.63","office":"Finance: Consumer Services","position":"Kids","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Devonne","salary":"$7.87","office":"Commercial Banks","position":"Music","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Spenser","salary":"$3.81","office":"Natural Gas Distribution","position":"Beauty","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Dannel","salary":"$2.80","office":"Commercial Banks","position":"Garden","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Trix","salary":"$0.80","office":"Paints/Coatings","position":"Clothing","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Octavia","salary":"$2.95","office":"n/a","position":"Jewelery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Bernardina","salary":"$3.95","office":"Major Banks","position":"Automotive","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Ellene","salary":"$0.81","office":"Paper","position":"Home","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Sergeant","salary":"$2.73","office":"Oil & Gas Production","position":"Toys","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Peter","salary":"$4.26","office":"Radio And Television Broadcasting And Communications Equipment","position":"Games","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Willy","salary":"$2.59","office":"Semiconductors","position":"Clothing","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Ingar","salary":"$4.25","office":"Major Pharmaceuticals","position":"Grocery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Issi","salary":"$3.78","office":"Semiconductors","position":"Sports","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Fabio","salary":"$1.47","office":"Oil & Gas Production","position":"Clothing","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Filmore","salary":"$8.16","office":"Telecommunications Equipment","position":"Beauty","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Suzann","salary":"$1.96","office":"Major Banks","position":"Books","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Brandea","salary":"$1.91","office":"Business Services","position":"Books","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Zenia","salary":"$5.01","office":"Telecommunications Equipment","position":"Beauty","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Truman","salary":"$6.01","office":"Oil & Gas Production","position":"Electronics","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Karleen","salary":"$4.73","office":"Telecommunications Equipment","position":"Clothing","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Benedikta","salary":"$7.24","office":"Restaurants","position":"Grocery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Chaunce","salary":"$4.82","office":"Business Services","position":"Outdoors","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Erminie","salary":"$1.86","office":"Coal Mining","position":"Books","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Aurlie","salary":"$2.25","office":"Computer Software: Prepackaged Software","position":"Grocery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Eddy","salary":"$6.83","office":"EDP Services","position":"Outdoors","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Consalve","salary":"$6.76","office":"Real Estate Investment Trusts","position":"Tools","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Malorie","salary":"$5.41","office":"n/a","position":"Beauty","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Mariquilla","salary":"$6.43","office":"n/a","position":"Jewelery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Gennifer","salary":"$6.22","office":"n/a","position":"Computers","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Kay","salary":"$2.30","office":"Major Pharmaceuticals","position":"Health","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Marje","salary":"$1.21","office":"Computer Software: Prepackaged Software","position":"Grocery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Georgia","salary":"$0.18","office":"n/a","position":"Grocery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Shirl","salary":"$5.03","office":"Home Furnishings","position":"Industrial","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Delmer","salary":"$2.31","office":"Business Services","position":"Electronics","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Gabrielle","salary":"$4.03","office":"Specialty Insurers","position":"Grocery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Annabal","salary":"$5.87","office":"Real Estate Investment Trusts","position":"Industrial","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Gasparo","salary":"$7.55","office":"Major Banks","position":"Books","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Griswold","salary":"$3.68","office":"n/a","position":"Industrial","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Lacey","salary":"$4.08","office":"Investment Managers","position":"Computers","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Fredi","salary":"$8.98","office":"n/a","position":"Clothing","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Mirilla","salary":"$0.44","office":"Trucking Freight/Courier Services","position":"Kids","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Gretta","salary":"$7.04","office":"Water Supply","position":"Garden","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Mariann","salary":"$9.93","office":"Mining & Quarrying of Nonmetallic Minerals (No Fuels)","position":"Outdoors","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Florenza","salary":"$6.12","office":"Hotels/Resorts","position":"Music","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Joly","salary":"$4.57","office":"Packaged Foods","position":"Electronics","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Carlos","salary":"$6.26","office":"n/a","position":"Automotive","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Maggee","salary":"$5.88","office":"n/a","position":"Books","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Tomkin","salary":"$4.16","office":"n/a","position":"Toys","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Hernando","salary":"$3.19","office":"Auto Manufacturing","position":"Games","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Dan","salary":"$0.48","office":"n/a","position":"Outdoors","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Pip","salary":"$6.06","office":"Electronic Components","position":"Shoes","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Erina","salary":"$5.56","office":"Major Banks","position":"Grocery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Pall","salary":"$1.19","office":"Agricultural Chemicals","position":"Tools","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Kurt","salary":"$4.82","office":"Marine Transportation","position":"Baby","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Milli","salary":"$1.51","office":"Industrial Machinery/Components","position":"Jewelery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Desirae","salary":"$6.43","office":"Finance: Consumer Services","position":"Books","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"},
      {"name":"Wynn","salary":"$5.12","office":"Major Pharmaceuticals","position":"Jewelery","Status": "<select class='form-control form-control-sm'><option>Default select</option><option>option2</option></select>","Active": " <input type='checkbox' class='form-check-input'>"}
    ],
    columns: [
        { "defaultContent": "" },
        { data: 'name' },
        { data: 'salary' },
        { data: 'office' },
        { data: 'position' },
        { data: 'Status' },
        { data: 'Active' ,
          className: 'text-center'}
    ],
    language: {
      decimal:        "",
      emptyTable:     "Ningún dato disponible en esta tabla",
      info:           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
      infoEmpty:      "Mostrando registros del 0 al 0 de un total de 0 registros",
      infoFiltered:   "(filtrados de _MAX_ total de registros)",
      infoPostFix:    "",
      thousands:      ",",
      lengthMenu:     "Mostrar _MENU_ registros",
      loadingRecords: "Cargando...",
      processing:     "Procesando...",
      search:         "Buscar:",
      zeroRecords:    "No se encontraron registros",
      paginate: {
          first:      "Primero",
          last:       "Último",
          next:       "Siguiente",
          previous:   "Anterior"
      },
      aria: {
          sortAscending:  ": Activar para ordenar la columna de manera ascendente",
          sortDescending: ": Activar para ordenar la columna de manera descendente"
      }
    }
} );
// Handle click on "Select all" control
function activar_botones(count){
  if(count == 0){
    $("#btn_editar,#btn_borrar").addClass('disabled');
  }
  else if(count == 1){
    $("#btn_editar,#btn_borrar").removeClass('disabled');
  }
  else{
    $("#btn_editar").addClass('disabled');
  }
}
$('#select-all').click(function(){
  if($('#select-all').is(':checked')){
    table.rows().select();
  }
  else{
    table.rows().deselect();
  }
});

$("#selected").click(function(){
  var count = table.rows( { selected: true } ).count();
  console.log("Cantidad: "+count);
  console.log(table.rows( { selected: true } ));
});

table.on( 'select', function ( e, dt, type, indexes ) {
    activar_botones(table.rows( { selected: true } ).count());
     } ).on( 'deselect', function ( e, dt, type, indexes ) {
       activar_botones(table.rows( { selected: true } ).count());
     } );
$(".modal").appendTo(document.body);
</script>

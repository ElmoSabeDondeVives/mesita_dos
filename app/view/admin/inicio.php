<?php
/**
 * Created by PhpStorm
 * User: CESARJOSE39
 * Date: 09/03/2021
 * Time: 16:18
 */
?>
<!--CONTENIDO-->
<!-- MAIN CONTENT-->



    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <?php
                if($role == 2 || $role == 3 || $role == 7) {
                    ?>
                <div class="row">
                        <div class="col-md-12">
                            <div class="overview-wrap">
                                <h2 class="title-1">Datos de Ventas</h2>
                            </div>
                        </div>
                    </div>
                <div class="row mt-2">
                    <div class="col-lg-3 col-md-12 col-3 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title d-flex align-items-start justify-content-between">
                                    <div class="avatar flex-shrink-0">
                                        <img
                                                src="<?= _SERVER_._STYLES_bt5_ ?>assets/img/icons/unicons/chart-success.png"
                                                alt="Credit Card"
                                                class="rounded"
                                        />
                                    </div>
                                    <!--<div class="dropdown">
                                        <button
                                                class="btn p-0"
                                                type="button"
                                                id="cardOpt6"
                                                data-bs-toggle="dropdown"
                                                aria-haspopup="true"
                                                aria-expanded="false"
                                        >
                                            <i class="bx bx-dots-vertical-rounded"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt6">
                                            <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                        </div>
                                    </div>-->
                                </div>
                                <span >Ventas del Dia</span>
                                <h3 class="card-title text-nowrap mb-2"><?= count($venta_dia);?></h3>
                                <!--<small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.42%</small>-->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-12 col-3 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title d-flex align-items-start justify-content-between">
                                    <div class="avatar flex-shrink-0">
                                        <img
                                                src="<?= _SERVER_._STYLES_bt5_ ?>assets/img/icons/unicons/wallet-info.png"
                                                alt="Credit Card"
                                                class="rounded"
                                        />
                                    </div>
                                    <!--<div class="dropdown">
                                        <button
                                                class="btn p-0"
                                                type="button"
                                                id="cardOpt6"
                                                data-bs-toggle="dropdown"
                                                aria-haspopup="true"
                                                aria-expanded="false"
                                        >
                                            <i class="bx bx-dots-vertical-rounded"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt6">
                                            <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                        </div>
                                    </div>-->
                                </div>
                                <span>Ingresos del Día</span>
                                <h3 class="card-title text-nowrap mb-1"><?= number_format($total_dia, 2); ?></h3>
                                <!--<small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.42%</small>-->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-12 col-3 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title d-flex align-items-start justify-content-between">
                                    <div class="avatar flex-shrink-0">
                                        <img
                                                src="<?= _SERVER_._STYLES_bt5_ ?>assets/img/icons/unicons/cc-primary.png"
                                                alt="Credit Card"
                                                class="rounded"
                                        />
                                    </div>
                                    <!--<div class="dropdown">
                                        <button
                                                class="btn p-0"
                                                type="button"
                                                id="cardOpt6"
                                                data-bs-toggle="dropdown"
                                                aria-haspopup="true"
                                                aria-expanded="false"
                                        >
                                            <i class="bx bx-dots-vertical-rounded"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt6">
                                            <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                        </div>
                                    </div>-->
                                </div>
                                <span>Ventas del Mes</span>
                                <h3 class="card-title text-nowrap mb-1"><?= number_format($total_mes, 2);?></h3>
                                <!--<small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.42%</small>-->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-12 col-3 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title d-flex align-items-start justify-content-between">
                                    <div class="avatar flex-shrink-0">
                                        <img
                                                src="<?= _SERVER_._STYLES_bt5_ ?>assets/img/icons/unicons/cc-warning.png"
                                                alt="Credit Card"
                                                class="rounded"
                                        />
                                    </div>
                                    <!--<div class="dropdown">
                                        <button
                                                class="btn p-0"
                                                type="button"
                                                id="cardOpt6"
                                                data-bs-toggle="dropdown"
                                                aria-haspopup="true"
                                                aria-expanded="false"
                                        >
                                            <i class="bx bx-dots-vertical-rounded"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt6">
                                            <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                        </div>
                                    </div>-->
                                </div>
                                <span>Ingreso del Mes</span>
                                <h3 class="card-title text-nowrap mb-1"><?= number_format($total_mes, 2);?></h3>
                                <!--<small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.42%</small>-->
                            </div>
                        </div>
                    </div>
                </div>

                <?php
                }
                ?>
                <?php
                if($role == 2 || $role == 3 || $role == 5 || $role == 7){
                ?>

                <div class="row">
                    <?php if(!$fecha_open){ ?>
                        <!-- Apertura de Caja -->
                        <div class="col-lg-12 mb-12 order-0">
                            <div class="card">
                                <div class="d-flex align-items-end row">
                                    <div class="col-sm-7">
                                        <div class="card-body">
                                            <h5 class="card-title text-primary">REALIZAR APERTURA DE CAJA ! 🎉</h5>
                                            <div class="row">
                                                <div class="row">
                                                    <div class="col-lg-4 col-xs-4 col-sm-4 col-md-4">
                                                        <label>Turno:</label>
                                                        <select class="form-control" id= "id_turno" name="id_turno">
                                                            <?php
                                                            foreach($turnos as $l){
                                                                ?>
                                                                <option value="<?php echo $l->id_turno;?>"><?php echo $l->turno_nombre;?></option>
                                                                <?php
                                                            }
                                                            ?>
                                                        </select>
                                                    </div>
                                                    <div class="col-lg-4 col-xs-4 col-sm-4 col-md-4">
                                                        <label>Caja:</label>
                                                        <select class="form-control" id= "id_caja_numero" name="id_caja_numero">
                                                            <?php
                                                            foreach($caja as $l){
                                                                $fecha = date('Y-m-d');
                                                                $buscar_caja = $this->caja->buscar_caja_disponible($l->id_caja_numero);
                                                                if(empty($buscar_caja)){

                                                                    ?>
                                                                    <option value="<?php echo $l->id_caja_numero;?>"><?php echo $l->caja_numero_nombre;?></option>
                                                                    <?php

                                                                }
                                                            }
                                                            ?>
                                                        </select>
                                                    </div>
                                                    <div class="col-lg-4 col-xs-4 col-sm-4 col-md-4" >
                                                        <label >MONTO </label>
                                                        <input type="text" class="form-control" id="caja_apertura" name="caja_apertura" onkeyup="validar_numeros_decimales_dos(this.id)" >
                                                    </div>
                                                    <div class="col-lg-12 col-xs-12 col-sm-12 col-md-12 mt-2" >
                                                        <button id="btn-agregar-apertura" class="btn btn-sm btn-outline-primary mt-2" style="align-content: center;width: 100%" onclick="apertura()"><i class="fa fa-save fa-sm text-white-50"></i> APERTURAR CAJA</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5 text-center text-sm-left">
                                        <div class="card-body pb-0 px-0 px-md-4">
                                            <img
                                                    src="<?=_SERVER_._STYLES_bt5_?>assets/img/illustrations/man-with-laptop-light.png"
                                                    height="140"
                                                    alt="View Badge User"
                                                    data-app-dark-img="illustrations/man-with-laptop-dark.png"
                                                    data-app-light-img="illustrations/man-with-laptop-light.png"
                                            />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ////////////////// -->
                        <?php
                    } else {
                    $monto_apertura = $this->caja->mostrar_valor_apertura($id_usuario);
                    $valor_por_caja = $this->caja->valor_por_caja($id_usuario);

                    //$nombre = $vc->caja_numero_nombre;
                    $jalar_turno = $this->caja->jalar_turno_($id_usuario);

                    ?>
                        <!--  Datos de Apertura de Caja  -->
                        <div class="row">
                            <div class="col-lg-12 mb-4 order-0">
                                <div class="card">
                                    <div class="d-flex align-items-end row">
                                        <div class="col-sm-7">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <h5 class="card-title text-primary">Datos de Apertura 🎉</h5>
                                                        <p class="mb-2">
                                                            <i class="bx bx-spa"></i>  CAJA  :<span class="fw-bold text-uppercase"><?= $valor_por_caja->caja_numero_nombre;?></span>

                                                        </p>
                                                        <p class="mb-2">
                                                            <i class="bx bx-spa"></i>  TURNO :<span class="fw-bold text-uppercase"><?= $jalar_turno;?></span>
                                                        </p>
                                                        <p class="mb-2">
                                                            <i class="bx bx-spa"></i>  USUARIO :<span class="fw-bold text-uppercase"><?php echo $usuario->usuario_nickname;?></span>
                                                        </p>
                                                        <p class="mb-2">
                                                            <i class="bx bx-spa"></i>  MONTO :<span class="fw-bold text-uppercase">S/.<?= $monto_apertura ?? 0?></span>
                                                        </p>
                                                    </div>
                                                    <div class="col-lg-6 text-left">
                                                        <p class="mb-2">
                                                            <i class="bx bx-spa"></i>  Cierre de Caja :<span class="fw-bold text-uppercase"></span>
                                                        </p>
                                                        <input class="form-control" placeholder="---------------" type="text" id="caja_monto_cierre" name="caja_monto_cierre" onkeyup="validar_numeros_decimales_dos(this.id)">
                                                        <a href="javascript:;" id="btn-agregar-cierre" class="btn btn-sm btn-outline-primary mt-2" onclick="guardar_cierre_caja(<?= $id_usuario;?>)" >Guardar Cierre</a>
                                                    </div>
                                                </div>
                    <?php
                    $buscar_cierre_caja = $this->caja->buscar_cierre_caja($listar_ultima_caja->id_caja,$id_usuario);
                    if(empty($buscar_cierre_caja)){
                    ?>
                        </div>
                        </div>
                        <div class="col-sm-5 text-center text-sm-left">
                            <div class="card-body pb-0 px-0 px-md-4">
                                <img
                                        src="<?= _SERVER_._STYLES_bt5_ ?>assets/img/illustrations/man-with-laptop-light.png"
                                        height="140"
                                        alt="View Badge User"
                                        data-app-dark-img="illustrations/man-with-laptop-dark.png"
                                        data-app-light-img="illustrations/man-with-laptop-light.png"
                                />
                            </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        <!-- //////////////////////////// -->


                        <?php
                    }
                    }
                    ?>

                </div>
                <div class="row mt-4">
                    <div class="col-lg-12">
                        <div class="card shadow mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h2>Recordatorio de Insumos </h2>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="table-responsive">
                                            <table class="table table-light" id="dataTable2">
                                                <thead class="text-capitalize">
                                                <tr>
                                                    <th>Recurso</th>
                                                    <th>Stock Actual</th>
                                                    <th>Stock Minimo</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <?php
                                                $nuevo_valor = 0;
                                                foreach ($recurso_sede as $ar){
                                                    $recurso_actual = $ar->recurso_sede_stock;
                                                    $recurso_limite = $ar->recurso_sede_stock_minimo;
                                                    $nuevo_valor = $recurso_limite + 20;

                                                    if($recurso_actual <= $recurso_limite){
                                                        $estilo_ = "style=\"background: #FADBD8\"";
                                                    }else{
                                                        $estilo_ = "style=\"background: #FCF3CF\"";
                                                    }

                                                    if($recurso_actual <= $nuevo_valor){

                                                        ?>
                                                        <tr <?= $estilo_;?>>
                                                            <td <?= $estilo_;?> ><?= $ar->recurso_nombre;?></td>
                                                            <td <?= $estilo_;?> ><?= $ar->recurso_sede_stock;?></td>
                                                            <td <?= $estilo_;?> ><?= $ar->recurso_sede_stock_minimo;?></td>
                                                        </tr>
                                                        <?php
                                                    }
                                                    ?>
                                                    <?php
                                                    $a++;
                                                }
                                                ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
        }else{ ?>
            <div class="container-fluid">
                <div class="row">
                     <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12" style="text-align: center">
                         <h1 style="color: darkred">BIENVENID0(A) AL SISTEMA :</h1>
                         <h1 style="color: darkred"> <?= $usuario->persona_nombre;?> <?= $usuario->persona_apellido_paterno?></h1>
                         <br><br>
                         <h1 style="color: black">Su Rol es : <?=$usuario->rol_nombre?></h1>
                     </div>
                </div>
            </div>
        <?php
        }
        ?>
    </div>
    <!-- END MAIN CONTENT-->
    <!-- END PAGE CONTAINER-->
<!-- End of Main Content -->
<script src="<?php echo _SERVER_ . _JS_;?>domain.js"></script>
<script>
    function apertura(){
        var valor = true;
        //Extraemos las variable según los valores del campo consultado
        var caja_apertura = $('#caja_apertura').val();
        var id_caja_numero = $('#id_caja_numero').val();
        var id_turno = $('#id_turno').val();

        //Validamos si los campos a usar no se encuentran vacios
        valor = validar_campo_vacio('caja_apertura', caja_apertura, valor);
        valor = validar_campo_vacio('id_caja_numero', id_caja_numero, valor);
        valor = validar_campo_vacio('id_turno', id_turno, valor);

        if(valor){
            //Definimos el mensaje y boton a afectar
            var boton = "btn-agregar-apertura";
            //Cadena donde enviaremos los parametros por POST
            var cadena = "caja_apertura=" + caja_apertura +
                "&id_caja_numero=" + id_caja_numero +
                "&id_turno=" + id_turno;
            $.ajax({
                type: "POST",
                url: urlweb + "api/Admin/guardar_apertura_caja",
                data: cadena,
                dataType: 'json',
                beforeSend: function () {
                    cambiar_estado_boton(boton, "Guardando...", true);
                },
                success:function (r) {
                    cambiar_estado_boton(boton, "<i class=\"fa fa-save fa-sm text-white-50\"></i>  Aperturar Caja", false);
                    switch (r.result.code) {
                        case 1:
                            respuesta('¡Ingreso de Apertura Exitoso!', 'success');
                            setTimeout(function () {
                                location.reload();
                            }, 1000);
                            break;
                        case 2:
                            respuesta('Error al ingresar la apertura de la caja', 'error');
                            break;
                        default:
                            respuesta('¡Algo catastrofico ha ocurrido!', 'error');
                            break;
                    }
                }
            });
        }
    }

    function guardar_cierre_caja(id){
        var valor = true;
        var caja_monto_cierre = $('#caja_monto_cierre').val();

        valor = validar_campo_vacio('caja_monto_cierre', caja_monto_cierre, valor);
        if(valor){
            //Definimos el mensaje y boton a afectar
            var boton = "btn-agregar-cierre";
            //Cadena donde enviaremos los parametros por POST
            var cadena = "caja_monto_cierre=" + caja_monto_cierre +
                "&id_usuario=" + id;
            $.ajax({
                type: "POST",
                url: urlweb + "api/Admin/guardar_cierre_caja",
                data: cadena,
                dataType: 'json',
                beforeSend: function () {
                    cambiar_estado_boton(boton, "Guardando...", true);
                },
                success:function (r) {
                    cambiar_estado_boton(boton, "<i class=\"fa fa-save fa-sm text-white-50\"></i> Guardar Cierre", false);
                    switch (r.result.code) {
                        case 1:
                            respuesta('¡Cierre de caja Exitoso!', 'success');
                            setTimeout(function () {
                                location.reload();
                            }, 1000);
                            break;
                        case 2:
                            respuesta('Error al guardar, comuniquese con BufeoTec Company', 'error');
                            break;
                        default:
                            respuesta('¡Algo catastrofico ha ocurrido!', 'error');
                            break;
                    }
                }
            });
        }
    }
</script>
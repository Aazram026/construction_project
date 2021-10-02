function myFunction() {
    var x = document.getElementById("#estimationtable");
    var plotsize=document.getElementById("Plotsize").value;
    var sqftinmarla=document.getElementById("Sqftinmarla").value;
    var gateheight=document.getElementById("Gateheight").value;
    var gatewidth=document.getElementById("Gatewidth").value;
    var gatesize=gateheight*gatewidth;
    var area= plotsize*sqftinmarla;
    var noofrooms=document.getElementById("Noofrooms").value;
    var noofbathrooms=document.getElementById("Noofbath").value;
    var nooflounge=document.getElementById("lounge").value;
    var noofdrawing=document.getElementById("Drawing").value;
    var noofkitchen=document.getElementById("Kitchen").value;
//////////////////////////////////PriceStart///////////////////////////////////////
    var brickprice=25;
    var cementprice=1800;
    var ironbar=5500;
    var crush= 1300;
    var sand=200;
    var marble=1800;
    var tiles=2200;
    var doors=3000;
    var windows=12000;
    var interior=20000;
    var gate=5500;
    var elecricwork=5000;
    var paintwork=5000;
    var sanitaryworks=5000;
    var labour=800;
//////////////////////////////////PriceEnd///////////////////////////////////////



    //brick cost estimation
    //Here
    //Thickness of mortar=0.4"
    //Thickness of wall=9"
    //vol of a brick=168.23
    var volumeof1brickwithmortar=168.23;
      
    //1 sqft=144 sq in
    var volumeofbrickwork= 9*(area*144);
    
    var noofbricks= volumeofbrickwork/volumeof1brickwithmortar;
   // var totalcostbricks=noofbricks*brickprice;
    var brickqtyff=(noofbricks*2)-noofbricks;
    //var amountpkrbrick= totalcostbricks/1.5;
    /////CEMENT///
    var cementqty=(noofrooms+noofbathrooms+noofkitchen+nooflounge+noofdrawing)/noofbricks;
    //var cementprc=cementqty*cementprice;
    var cementqtyff=cementqty/2;
    //var cementpkr=cementprc/2;
    ////Ironbars///
    var ironbarsqty=(noofrooms*plotsize)
    var ironbarprc= ironbarsqty*ironbar;
    var ironbartotalqtyff= ironbarsqty/2;
    //var ironbarpkr=ironbarprc/2;
    ////Crush///

    var crushqty=area*cementqty;
    var crushprc=(crushqty*crush)/14444;
    var crushtotalqtyff=crushqty/2;
    //var crushpkr=crushprc/2;

    ////Sand////
    var sandqty=area*noofrooms;
    var sandprc=(sandqty*sand)/144;
    var sandtotalqtyff=sandqty/2;
    //var sandpkr=sandprc/2;
    /////Marble///
    var marbleqty=area*noofrooms;
    var marbleprc=(marbleqty*marble)/(marble/2);
    var marbletotalqty=marbleqty/2;
    //var marblepkr=marbleprc/2;

    /////tiles/////
    var tilesqty=area*(noofrooms+noofbathrooms);
    var tilesprc=(tilesqty*tiles)/(tiles/3);
    var tilestotalqtyff=tilesqty/2;
    //var tilespkr=tilesprc/2
    ////Doors///

    var doorsqty=noofrooms+noofbathrooms+noofkitchen+nooflounge+noofdrawing/4;
    var doorsprc=(doorsqty);
    var doorstotalqtyff= doorsqty/2;
    //var doorpkr=doorsprc/2;

    ///Windows////
    var windowsqty=doorsqty/2;
    var windowsprc=(windowsqty*windows)/(windows/2);
    var windowstotalqtyff=windowsqty/2;
    //var windowspkr=windowsprc/2;
    ////Interior Wood works////
    var interiorqty=doorsqty/4;
    var interiorprc=(interiorqty*interior)/(interior/2);
    var interiorqtyff=interiorqty/2;
    //var interiorpkr=interiorprc/2;
    //////Main Gate/////
    var maingateqty=area;
    var maingateprc=(maingateqty*gate)/(gate/3);
    var maingatesqtyff=(maingateqty*4)/2;
    //var maingatespkr=maingateprc/2;
    /////Electric Works////
    var electricqty=(doorsqty/4)/2;
    var electricprc= (electricqty*elecricwork)/(elecricwork/2);
    var electricqtyff=electricqty/2;
    //var electricpkr=electricprc/2;
    /////Paint Works//////
   var paintqty= doorsqty;
   var paintprc= (paintqty*paintwork)/(paintwork/2);
   var paintqtyff=paintqty/2;
   //var paintpkr= paintprc/2;
    ////Sanitary Works////
    var sanitaryqty=(noofdrawing+noofkitchen+noofkitchen+noofbathrooms+nooflounge)/144;
    var sanitaryprc= (sanitaryqty*sanitaryworks)/(sanitaryworks/2);
    var sanitaryqtyff=sanitaryqty/2;
    //var sanitarypkr= sanitaryprc/2;


    ////Labour////
    //var labourprice=((noofrooms+noofkitchen+noofdrawing+nooflounge+noofbathrooms)*labour)/(labour/2);
   // var labourtotalcost=labourprice/2;

    /////Total////
   // var totalestimatedcost= parseFloat(totalcostbricks+cementprc+ironbarprc+crushprc+sandprc+marbleprc+tilesprc+doorsprc+windowsprc+interiorprc+maingateprc+electricprc+labourprice);
   // var totalcostff=amountpkrbrick+cementpkr+ironbarpkr+crushpkr+sandpkr+marblepkr+tilespkr+doorpkr+windowspkr+interiorpkr+maingatespkr+electricpkr+paintpkr+sanitarypkr;



    $("myDIV").hide();
    if (x.style.display === "block") {
        x.style.display = "none";
    } else {
        x.style.display = "block";
    }
    ///totalarea///
    (Math.round(gatesize * 100) / 100).toFixed(2);
    document.getElementById("Gatesize").placeholder=gatesize;
    document.getElementById("Totalarea").placeholder=area;
    ///bricks///

    document.getElementById("brickqty").innerHTML = (((Math.round(noofbricks * 100) / 100).toFixed(1))*4).toFixed(1);
    document.getElementById("brickqtyff").innerHTML = (((Math.round(brickqtyff * 100) / 100).toFixed(1))*3.8).toFixed(1);
    ///cement
    document.getElementById("cementqty").innerHTML = (((Math.round((noofrooms+noofbathrooms+noofkitchen+nooflounge+noofdrawing)* 100) / 100).toFixed(2))/35).toFixed(1);
    document.getElementById("cementtotalqty").innerHTML = (((Math.round((noofrooms+noofbathrooms+noofkitchen+nooflounge+noofdrawing) * 100) / 100).toFixed(2))/40).toFixed(1);
    ////Iron bar
    document.getElementById("ironbarsqty").innerHTML =(((Math.round( ironbarsqty* 100) / 100).toFixed(3))/6).toFixed(1);
    document.getElementById("ironbartotalqty").innerHTML =(((Math.round( ironbartotalqtyff* 100) / 100).toFixed(3))/4).toFixed(1);
     ////crush////
    document.getElementById("crushqty").innerHTML =((((Math.round((noofrooms+noofbathrooms+noofkitchen+nooflounge+noofdrawing)* 100) / 100).toFixed(2))/35).toFixed(1))*4;
        //(Math.round( crushqty* 100) / 100).toFixed(3);
    document.getElementById("crushtotalqty").innerHTML =((((Math.round((noofrooms+noofbathrooms+noofkitchen+nooflounge+noofdrawing)* 100) / 100).toFixed(2))/40).toFixed(1))*4;
        //(Math.round( crushtotalqtyff* 100) / 100).toFixed(3);

    /////sand/////
    document.getElementById("sandqty").innerHTML = (((Math.round( sandqty* 100) / 100).toFixed(2))/5).toFixed(1);
    document.getElementById("sandtotalqty").innerHTML =(((Math.round( sandqty* 100) / 100).toFixed(2))/6).toFixed(1);
    ////Marble/////
    document.getElementById("marbleqty").innerHTML = (((Math.round( marbleqty* 100) / 100).toFixed(2))/6).toFixed(1);
    document.getElementById("marbletotalqty").innerHTML = (((Math.round( marbletotalqty* 100) / 100).toFixed(2))/4).toFixed(1);
    ///Tiles///
    document.getElementById("tilesqty").innerHTML = (((Math.round( tilesqty* 100) / 100).toFixed(2))/50).toFixed(1);
    document.getElementById("tilestotalqty").innerHTML = (((Math.round( tilestotalqtyff* 100) / 100).toFixed(2))/50).toFixed(1);
    ////Doors////
    document.getElementById("doorsqty").innerHTML = (((((Math.round( doorsqty* 100) / 500).toFixed(2))/180).toFixed(2))/4).toFixed(1);
    document.getElementById("doorstotalqty").innerHTML = (((((Math.round( doorstotalqtyff* 100) / 500).toFixed(2))/180).toFixed(2))/3).toFixed(1);
    ////Windows////
    document.getElementById("windowsqty").innerHTML = (((((Math.round( windowsqty* 100) / 500).toFixed(2))/120).toFixed(2))/6).toFixed(1);
    document.getElementById("windowstotalqty").innerHTML = (((((Math.round( windowstotalqtyff* 100) / 500).toFixed(2))/120).toFixed(2))/4).toFixed(1);
    ////Interior wood works/////
    document.getElementById("interiorsqty").innerHTML = (((Math.round( interiorqty* 100) / 100).toFixed(2))/6).toFixed(1);
    document.getElementById("interiortotalqty").innerHTML = (((Math.round( interiorqtyff* 100) / 100).toFixed(2))/4).toFixed(1);
     ////Main Gate/////

    ////Electric Works///
    document.getElementById("electricqty").innerHTML = (((Math.round( electricqty* 100) / 100).toFixed(2))/3).toFixed(1);
    document.getElementById("electrictotalqty").innerHTML = (((Math.round( electricqtyff* 100) / 100).toFixed(2))/1.6).toFixed(1);
    ///Paint Works////
    document.getElementById("paintqty").innerHTML = (((((Math.round( paintqty* 100) / 100).toFixed(2))/100).toFixed(2))*20).toFixed(1);
    document.getElementById("painttotalqty").innerHTML = (((((Math.round( paintqtyff* 100) / 100).toFixed(2))/100).toFixed(2))*28).toFixed(1);
    ///Sanitary Works////
    document.getElementById("sanitaryqty").innerHTML = (((Math.round( sanitaryqty* 100) / 100).toFixed(2))*17).toFixed(1);
    document.getElementById("sanitarytotalqty").innerHTML = (((Math.round( sanitaryqtyff* 100) / 100).toFixed(2))*30).toFixed(1);
    ////Labour////
///////total//////

}



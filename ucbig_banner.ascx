<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucbig_banner.ascx.vb" Inherits="ucbig_banner" %>


    <style type="text/css">
        .style1
        {
            width: 946px;
        }
    </style>


    <script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/fadeslideshow.js"></script>






    <script type="text/javascript">


        var mygallery4 = new fadeSlideShow({
            wrapperid: "fadeshow4", //ID of blank DIV on page to house Slideshow
            dimensions: [1024, 514], //width/height of gallery in pixels. Should reflect dimensions of largest image
            imagearray: [
            <%=fCarregarBigBanners()%> 
            ],
            displaymode: { type: 'auto', pause: 3000, cycles: 0, wraparound: true },
            persist: true, //remember last viewed slide and recall within same session?
            fadeduration: 500, //transition duration (milliseconds)
            descreveal: "always",
            togglerid: "fadeshow4toggler"
        })

</script>
<center>
<table    width=945px>
    <tr>
        <td>
            <div id="fadeshow4" 
                style="width:974px;  height:480px;  border:0px solid #ff6600; margin-top:8px; margin-left:0px; border:0px solid #ff6600">
            </div>
            <div id="fadeshow4toggler" 
                style=" position:absolute; width:974px;  height:40px;   margin-top:-360px; z-index:1000000; border:0px solid #ff6600">
                <table  width=976px>
                <tr>
                <td align=left>
                 <a class="prev" href="#">
                <img src="images/left.png" style=" padding-left:20px;border-width:0" /></a>
                </td>
                
                <td align=right>
                 <a class="next" 
                    href="#" style="float:right">
                <img src="images/right.png" style="border-width:0" /></a>

                </td>
                </tr>
                </table>
               
            </div>
            
        </td>
    </tr>
</table>

</center>


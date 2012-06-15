jQuery(document).ready(function () {
    jQuery("[name='cks']").change(function () {
        var str = "";
        jQuery("input[name='cks']:checked").each(function (i, val) {
            str += jQuery(this).val() + " duoc checked, ";
        });
        jQuery("#cks_div").html(str);
    });
    jQuery("[name='rds']").change(function () {
        var str = "";
        jQuery("input[name='rds']:checked").each(function (i, val) {
            str += jQuery(this).val() + " duoc checked, ";
        });
        jQuery("#rds_div").html(str);
    });
});
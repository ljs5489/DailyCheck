var oEditors = [];

function se2_init(id) {
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: id,
        sSkinURI: "../SmartEditor/SmartEditor2Skin.html",
        htParams: {
            bUseToolbar: true,
            fOnBeforeUnload: function () { },
            fOnAppLoad: function () { },
            fCreator: "createSEditor2"
        }
    });
}

function se2_syncData() {
    var textareaId = $("textarea.smarteditor2").attr("id");
    oEditors.getById[textareaId].exec("UPDATE_CONTENTS_FIELD", []);
}

$(function () {
    $("textarea.smarteditor2").each(function () {  
        var textareaId = $(this).attr("id"); 
        se2_init(textareaId); 
    });

    $("[type=submit]").click(function() { se2_syncData(); });        
});

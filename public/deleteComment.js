function deleteComment() {
    var password = prompt("패스워드를 입력해주세요.");
    $('#comment_pw').val(password);
    $('#comment_del_form').submit();
}

$(document).ready(function(){
    $('#test').click(function(event) {
        event.preventDefault()
        $('#comment_id').val($('#test').attr('href'));
        //console.log("comment_id: " + $('#comment_id').val());
        $('#myModal').modal('show')
    });    
});

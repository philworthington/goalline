$(function () {
  $('.goals-table input[type=checkbox]').click(function () {
    $(this).parent('form').submit();
  });
});

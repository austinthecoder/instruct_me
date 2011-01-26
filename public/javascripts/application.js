$(function() {

  var instruction_forms = $('form.instruction');
  var check_box_to_button = function(input) {
    var button = $('<button type="submit"></button>').html(input.find('label').html());

    input.hide().after(button);
    button.click(function() {
      input.find('input').attr('checked', true);
    });
  }

  instruction_forms.each(function() {
    var form = $(this);

    check_box_to_button(form.find('.add_step .input'));

    form.find('.step').each(function() {
      var step = $(this);

      check_box_to_button(step.find('.remove_step .input'));

      check_box_to_button(step.find('.add_command .input'));

      step.find('.remove_command .input').each(function() {
        check_box_to_button($(this));
      });
    });
  });

  $('input').keypress(function(e) {
    var code = null;
    code = (e.keyCode ? e.keyCode : e.which);
    return (code == 13) ? false : true;
  });

});
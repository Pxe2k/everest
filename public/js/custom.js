function tinymce_setup_callback(editor) {
    // Удаляем экземпляр tinymce который создает voyager
    editor.remove();
    editor = null;
    // Инициализируем свой tinymce
    tinymce.init({
        // Селектор по которому выбираем textarea
        selector: ".richTextBox",
        plugins: 'lists link image code',
        toolbar: 'undo redo | formatselect | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | code',
    });
    // 
}

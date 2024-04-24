function tinymce_setup_callback(editor) {
    // Удаляем экземпляр tinymce который создает voyager
    editor.remove();
    editor = null;
    // Инициализируем свой tinymce
    tinymce.init({
        // Селектор по которому выбираем textarea
        selector: "#richtextdescription",
        plugins: 'lists link image',
        toolbar: 'undo redo | formatselect | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | help',
    });
    // Здесь будут данные из редактора (можно не указывать)
    tinymce.get("richtextdescription").getContent();
}

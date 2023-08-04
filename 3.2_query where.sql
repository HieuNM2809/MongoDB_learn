//-- Where nếu ký tự đầu name bằng với ký tự đầu của detail thì lấy 
db.books.find({
    $where: function () {
      var a = this.name.charAt(0);
  
      // Kiểm tra trường `detail` có phải là chuỗi không
      if (typeof this.detail === 'string') {
        var b = this.detail.charAt(0);
        return a === b;
      }
  
      // Nếu trường `detail` không phải là chuỗi, trả về false
      return false;
    }
});
db.books.find({
    $where: function () {
        return this.name == "Toán";
    }
});
function CheckAddBook() {
  const bookId = document.getElementById("bookId");//도서 아이디 태그
  const name = document.newBook.name.value;//폼 태그에만 적용됨
  const unitPrice = document.newBook.unitPrice.value; // 가격
  const author = document.newBook.author.value; // 저자
  const publisher = document.newBook.author.value; // 출판사
  const unitsInStock = document.newBook.unitsInStock.value; // 재고 수
  const description = document.newBook.description.value//상세정보

  if (!check(/^ISBN[0-9]{1,8}$/, bookId, "[도서코드]\nISBN과 숫자를 조합하여 5~12자까지 입력하세요.\n첫글자는 반드시 ISBN으로 시작하세요."))
    return false;

  if (name.length < 4 || name.length > 20) { // 도서명의 문자 길이가 4~20자인지 유효성 검사
    alert("도서명은 4~20자까지 입력 가능합니다.");

    document.newBook.name.select();
    document.newBook.name.focus();
    return false;
  }

  if (unitPrice.length == 0 || isNaN(unitPrice)) { // 가격의 문자 길이가 0인지 숫자인지 유효성 검사
    alert("가격은 숫자를 입력해야 합니다.");

    document.newBook.unitPrice.select();
    document.newBook.unitPrice.focus();
    return false;
  }

  if (author.length < 2 || author.length > 12) {
    alert("저자는 2~12자까지 입력 가능합니다.");

    document.newBook.author.select();
    document.newBook.author.focus();
    return false;
  }

  if (publisher.length < 2 || publisher.length > 12) {
    alert("출판사는 2~12자까지 입력 가능합니다.");

    document.newBook.publisher.select();
    document.newBook.publisher.focus();
    return false;
  }


  if (unitsInStock.length == 0 || isNaN(unitsInStock)) { // 재고 수가 숫자인지 유효성 검사
    alert("재고 수에 숫자만 입력 가능합니다.");

    document.newBook.unitsInStock.select();
    document.newBook.unitsInStock.focus();
    return false;
  }

  if (description.length < 100) {
    alert("상세정보는 100자 이상 적어주세요!");

    document.newBook.description.select();
    document.newBook.description.focus();
    return false;
  }


  function check(regExp, e, msg) {
    if (regExp.test(e.value)) { // 정규 표현식 검사
      return true;
    }

    // 오류 시
    alert(msg); // 에러 메시지 msg 출력
    e.select(); // 입력 항목 선택
    e.focus(); // 입력 항목 커서 맞춤
    return false;
  }

  document.newBook.submit();
}

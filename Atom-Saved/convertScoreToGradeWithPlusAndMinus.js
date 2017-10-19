//--> 같은 결과값을 반환하는데, 훨씬 축약된 버전 (삼항연산자 사용)

function convertScoreToGradeWithPlusAndMinus(score) {

  if (score < 0 || 100 < score) {
    return 'INVALID SCORE';
  }

  if (90 <= score) {
    return (98 <= score) ? 'A+' : (score <= 92) ? 'A-' : 'A';
  } else if (80 <= score) {
    return (88 <= score) ? 'B+' : (score <= 82) ? 'B-' : 'B';
  } else if (70 <= score) {
    return (78 <= score) ? 'C+' : (score <= 72) ? 'C-' : 'C';
  } else if (60 <= score) {
    return (68 <= score) ? 'D+' : (score <= 62) ? 'D-' : 'D';
  } else return 'F';

}

console.log(convertScoreToGradeWithPlusAndMinus(98));

/*
function convertScoreToGradeWithPlusAndMinus(score) {

  var grade, valPlusMinus;
  var chkPlusMinus = score.toString().substring(1,2);

  if (90 <= score && score <= 100) {
    grade = 'A';
  } else if (80 <= score && score < 90) {
    grade = 'B';
  } else if (70 <= score && score < 80) {
    grade = 'C';
  } else if (60 <= score && score < 70) {
    grade = 'D';
  } else if (0 <= score && score < 60) {
    grade = 'F';
  } else return grade = 'INVALID SCORE';

  if (60 <= score && score <= 99) {
    if (chkPlusMinus === '8' || chkPlusMinus === '9') {
      valPlusMinus = '+';
    } else if (chkPlusMinus === '0' || chkPlusMinus === '1' || chkPlusMinus === '2') {
      valPlusMinus = '-';
    } else valPlusMinus = '';
  } else if (score === 100) {
    valPlusMinus = '+';
  } else valPlusMinus = '';

  return grade + valPlusMinus;

}

console.log(convertScoreToGradeWithPlusAndMinus(100));
*/

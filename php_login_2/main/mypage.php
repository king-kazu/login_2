<?php
session_start();
require_once '../classes/UserLogic.php';
require_once '../functions.php';
require_once '../dbconnect.php';


// ログインしているか判定し、していなかったら新規登録画面へ返す
$result = UserLogic::checkLogin();

if (!$result) {
  $_SESSION['login_err'] = 'ユーザを登録してログインしてください！';
  header('Location: signup_form.php');
  return;
}

$login_user = $_SESSION['login_user'];
$session_id = $login_user['id'];
$session_name = $login_user['name'];

$pdo = connect();
$stmt = $pdo->prepare('SELECT * FROM gs_users');
$status = $stmt->execute();

//データ表示
$view = '';
if ($status === false) {
  $error = $status->errorInfo();
  exit('SQLError:' . print_r($error, true));
} else {
    $view .= '<p>';
    $view .= '<a href="detail.php?id='. $login_user['id'].'">';
    $view .= $login_user['name'] . '<p>[会員情報変更フォームへ]</p>';
    $view .= '</a>';
    //削除
    $view .= '<a href="delete.php?id=' . $login_user['id'] . '">'; //追記
    $view .= ' [会員情報削除]';
    $view .= '</a>';
    //削除ここまで
    $view .= '</p>';
  }

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/style.css">
  <title>マイページ</title>
</head>
<body>
  <h2 class="mb20">マイページ</h2>
    <dt class="mb20">ログインユーザ名</dt><dd class="mb20"><?php echo h($login_user['name']) ?></dd>
    <dt class="mb20">メールアドレス</dt><dd class="mb20"><?php echo h($login_user['email']) ?></dd>
    <div>
      <a href="detail.php"></a>
      <?= $view ?>
      <p>※会員情報変更はフォーム送信後、再ログインしてください。</p>
      <p>※会員情報を削除する場合は[会員情報削除]をクリックした後ログアウトしてください。</p>
    </div>

    <form action="logout.php" method="POST">
    <input type="submit" name="logout" value="ログアウト" class="btn btn-secondary">
</form>
</body>
</html>
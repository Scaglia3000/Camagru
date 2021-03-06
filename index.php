<?php
require('controller/pictureController.php');
require('controller/picturesController.php');
require('controller/mailController.php');
require('controller/userController.php');
require('controller/commentsController.php');
require('controller/likesController.php');

try {
    // VIEWS
    // ---------------------------------------------------------------
    if (isset($_GET['view']))
    {
        if ($_GET['view'] == 'account')
        {
            require('view/userAccountView.php');
        }
        else if ($_GET['view'] == 'user')
        {
            require('view/userView.php');
        }
        else if ($_GET['view'] == 'camera')
        {
            showMainView();
        }
        else if ($_GET['view'] == 'picture' && isset($_GET['id']))
        {
            showMedia("picture", "", $_GET['id']);
        }
        else if ($_GET['view'] == 'gallery' && isset($_GET['page']))
        {
            showMedia("gallery", $_GET['page'], "");
        }
        else if ($_GET['view'] == 'forgotPassword')
        {
            require('view/forgotPasswordView.php');
        }
        else if ($_GET['view'] == 'updateCommentView')
        {
            if (isset($_GET['comment_id']) && isset($_GET['picture_id']))
            {
                showCommentUpdateView($_GET['comment_id'], $_GET['picture_id']);
            }
        }
    }
    // ACTIONS
    // ---------------------------------------------------------------
    if (isset($_GET['action']))
    {
        // USER ACTIONS
        if ($_GET['action'] == 'login')
        {
            login(htmlentities($_POST['login']), htmlentities($_POST['passwd']));
        }
        else if ($_GET['action'] == 'logout')
        {
            logout();
        }
        else if ($_GET['action'] == 'register')
        {
            register(htmlentities($_POST['name']), htmlentities($_POST['email']), htmlentities($_POST['passwd']), htmlentities($_POST['c_passwd']));
        }
        else if ($_GET['action'] == 'verify')
        {
            if(isset($_GET['email']) && isset($_GET['hash']))
            {
                verify($_GET['email'], $_GET['hash']);
            }
        }
        else if ($_GET['action'] == 'modify')
        {
            if ($_POST['old_passwd'] )
            {
                modify(htmlentities($_POST['old_passwd']), htmlentities($_POST['new_name']), htmlentities($_POST['new_email']), htmlentities($_POST['new_passwd']), htmlentities($_POST['c_passwd']));
            } else {
                echo("Please enter your current password to make changes");
            }
        }
        // PICTURES ACTIONS
        else if ($_GET['action'] == 'deletePicture')
        {
            if (isset($_GET['id']) && $_GET['id'] > 0)
            {
                deletePicture($_GET['id']);
            } else {
                throw new Exception('Tous les champs ne sont pas remplis !');
            }
        }
        // COMMENTS ACTIONS
        else if ($_GET['action'] == 'addComment') {
            if (isset($_GET['picture_id']) && isset($_GET['user_id'])) {
                if (session_start() && !empty($_POST['comment'])) {
                    addComment($_GET['picture_id'], $_GET['user_id'], htmlentities($_POST['comment']));
                }
                else {
                    throw new Exception('Tous les champs ne sont pas remplis !');
                }
            }
            else {
                throw new Exception('Aucun identifiant de photo envoyé');
            }
        }
        else if ($_GET['action'] == 'modifyComment') {
            if (isset($_GET['comment_id']) && isset($_GET['picture_id'])) {
                if (!empty($_POST['comment'])) {
                    modifyComment($_GET['comment_id'], $_GET['picture_id'], htmlentities($_POST['comment']));
                }
                else {
                    throw new Exception('Tous les champs ne sont pas remplis !');
                }
            }
            else {
                throw new Exception('Aucun identifiant de billet envoyé');
            }
        }
        else if ($_GET['action'] == 'deleteComment') {
            if (isset($_GET['comment_id']) && isset($_GET['picture_id'])) {
                deleteCommentCall($_GET['comment_id'], $_GET['picture_id']);
            }
            else {
                throw new Exception('Aucun identifiant de billet envoyé');
            }
        }
        else if ($_GET['action'] == 'comment') {
            if (isset($_GET['id']) && $_GET['id'] > 0) {
                getComment($_GET['id']);
            }
            else {
                throw new Exception('Aucun identifiant de billet envoyé');
            }
        }
        // LIKES ACTIONS
        else if ($_GET['action'] == 'like')
        {
            if (isset($_GET['picture_id']) && isset($_GET['user_id']))
            {
                like($_GET['picture_id'], $_GET['user_id']);
            }
        }
        else if ($_GET['action'] == 'unlike')
        {
            if (isset($_GET['picture_id']) && isset($_GET['user_id']))
            {
                unlike($_GET['picture_id'], $_GET['user_id']);
            }
        }
        // RESET PASSWORD ACTIONS
        else if ($_GET['action'] == 'sendPasswordResetEmail')
        {
            if (!empty(htmlentities($_POST['email'])))
            {
                sendPasswordResetEmail(htmlentities($_POST['email']));
            }
        }
        else if ($_GET['action'] == 'verifyAccountForReset')
        {
            if (isset($_GET['email']) && isset($_GET['hash']))
            {
                verifyAccountForReset($_GET['email'], $_GET['hash']);
            }
            else {
                throw new Exception('Paramètres de reset incorrects');
            }
        }
        else if ($_GET['action'] == 'resetPassword')
        {
            if (isset($_GET['email']) && isset($_GET['hash']) && !empty(htmlentities($_POST['r_password'])) && !empty(htmlentities($_POST['c_password'])))
            {
                resetPassword($_GET['email'], $_GET['hash'], htmlentities($_POST['r_password']), htmlentities($_POST['c_password']));
            }
        }
    }
    // LOAD THE GALLERY BY DEFAULT
    if (!isset($_GET['view']) && !isset($_GET['action']))
    {
        header('Location: index.php?view=gallery&page=1');
    }
}
// CATCH EXCEPTION
catch(Exception $e) {
    $errorMessage = $e->getMessage();
    require('view/errorView.php');
}
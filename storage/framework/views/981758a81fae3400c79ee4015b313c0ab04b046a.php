<form method="post" action="<?php echo e(action('Admin\SettingsController@updatebot')); ?>" enctype="multipart/form-data">
    <div class="form-group">
        <h5 class="text-<?php echo e($text); ?>">Bot Link</h5>
        <input type="text" name="bot_link" value="<?php echo e($settings->bot_link); ?>" class="form-control bg-<?php echo e(Auth('admin')->User()->dashboard_style); ?> text-<?php echo e($text); ?>">
    </div>
    <div class="form-group">
        <h5 class="text-<?php echo e($text); ?>">Telegram Token</h5>
        <input type="text" name="telegram_token" value="<?php echo e($settings->telegram_token); ?>" class="form-control  bg-<?php echo e(Auth('admin')->User()->dashboard_style); ?> text-<?php echo e($text); ?>" >
    </div>
    <div class="form-group">
        <h5 class="text-<?php echo e($text); ?>">Bot group chat link</h5>
        <input type="text" name="bot_group_chat" value="<?php echo e($settings->bot_group_chat); ?>" class="form-control bg-<?php echo e(Auth('admin')->User()->dashboard_style); ?> text-<?php echo e($text); ?>">
    </div>

    <div class="form-group">
        <label for=""></label>
        <h5 class="text-<?php echo e($text); ?>">Bot channel link</h5>
        <input type="text" name="bot_channel" value="<?php echo e($settings->bot_channel); ?>" class="form-control bg-<?php echo e(Auth('admin')->User()->dashboard_style); ?> text-<?php echo e($text); ?>">
    </div>
    
    <div class="form-group">
        <div class="sign-u">
            <div class="sign-up1">
                <h4></h4>
                <h5 class="text-<?php echo e($text); ?>">Activate/Deactivate bot:</h5>
            </div>
            <div class="sign-up2">
            <label class="switch">
            <input type="checkbox" id="bot_activate" name="bot_activate" value="true">
            <span class="slider round"></span>
            </label>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
<input type="submit" class="btn btn-primary px-5 btn-lg" value="Save">
<input type="hidden" name="id" value="1">
<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
</form>
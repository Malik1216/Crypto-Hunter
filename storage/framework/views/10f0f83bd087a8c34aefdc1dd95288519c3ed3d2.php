<?php echo $__env->make('home.assetss', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>


<body class="auth-page">
    <div id="limiter">
    <div class="container-form  user-auth">
        <div>
            <?php if(Session::has('message')): ?>
            <div class="row">
                <div class="col-lg-12">
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <i class="fa fa-warning"></i> <?php echo e(Session::get('message')); ?>

                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if($rmessage!=""): ?>
            <div class="row">
                <div class="col-lg-12">
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <i class="fa fa-ok"></i> <?php echo e($rmessage); ?>

                    </div>
                </div>
            </div>
            <?php endif; ?>
        </div>
            <div class="section-form-box ">
                <a href="<?php echo e(url('/')); ?>" class="text-center"><img  
                    src="<?php echo e(asset('images/'.$settings->logo)); ?>" alt="<?php echo e($settings->site_name); ?>"
                     class="text-center"> </a>
                <h3 class="mb-3"> Admin Login</h3>

                <div class="section-form-login">
                    <form  class="form" method="POST" action="<?php echo e(route('adminlogin')); ?>">
                        <?php echo e(csrf_field()); ?>	
                        
                        <!-- Input Fields -->
                        <div class="form__group">
                            <input  class="form__input" name="email" id="email" placeholder="Enter your email" name="email" type="email" value="<?php echo e(old('email')); ?>" required>
                            <label for="email" class="form__label">enter email</label>
                            <?php if($errors->has('email')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('email')); ?></strong>
                                </span>
                            <?php endif; ?>
                        </div>
                        <div class="form__group" id="show_hide_password">
                            <input  class="form__input" id="password" name="password" id="password" placeholder="Enter your Password" type="password" required>
                            <label for="password" class="form__label">Password</label>
                            <?php if($errors->has('password')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('password')); ?></strong>
                                </span>
                            <?php endif; ?>
                        </div>
                        <!-- Submit Form Button Starts -->
                        <div class="form__group text-center">
                            <button class="btn btn__login" type="submit">log me in</button>
                        </div>
                        <!-- Submit Form Button Ends -->
                       
                        <div class="form__footer text-center">
                            <p class="mb-4">  &copy; Copyright  <?php echo e(date('Y')); ?> &nbsp; <?php echo e($settings->site_name); ?> &nbsp; All Rights Reserved.</p>
                        </div>
                    </form>
                <div>
            </div>
        </div>
    </div>

</body>
</html>

# File template generator
Use this plugin to create template files for [BaseMvp](https://github.com/hahn/base-kotlin-mvp) repository.

## Installation
1. Create directory ~/.android/templates/other/` if not exist
2. Copy `BaseMvpTemplate` and `BaseMvpTemplateFragment` to `other` directory
3. Open (or restart) Android Studio
4. Open your project that base on [BaseMvp](https://github.com/hahn/base-kotlin-mvp) 

## Step by step
Imagine you have to implement a sign in activity.

1. Create `signin` package inside `feature` directory
2. Right click on `signin` directory, go to New -> Other -> BaseMvp Template Activity
3. In Activity Name, insert `SignIn` (without **Activity**)
4. press Finish button
5. You will see there are 4 files created
    - SignInActivity.kt
    - SignInModule.kt
    - SignInPresenter.kt
    - SignInView.kt
6. Open `SignInActivity.kt` and you will see comment like this:
    ```kotlin
    /*
    * After activity created, you must:
    * - inject this activity in core/di/module/FeatureModule.kt, like this:
    *    @PerFeature
    *    @ContributesAndroidInjector(modules = [SignInModule::class])
    *    abstract fun bindSignInActivity(): SignInActivity
    * - insert this activity to AndroidManifest.xml
    */
    ```
7. Copy abstract function to `core/di/module/FeatureModule.kt` file
8. Insert `SignInActivity.kt` to `AndroidManifest.xml`

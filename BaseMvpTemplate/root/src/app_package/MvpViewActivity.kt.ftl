package ${escapeKotlinIdentifiers(packageName)}

import android.content.Context
import android.content.Intent
import android.os.Bundle
import dagger.android.AndroidInjection
import javax.inject.Inject
import ${applicationPackage}.R
import ${applicationPackage}.feature.base.BaseMvpActivity

/*
* After activity created, you must:
* - inject this activity in core/di/module/FeatureModule.kt, like this:
*    @PerFeature
*    @ContributesAndroidInjector(modules = [${className}Module::class])
*    abstract fun bind${className}Activity(): ${className}Activity
* - insert this activity to AndroidManifest.xml
*/

class ${className}Activity : BaseMvpActivity(), ${className}View {

    companion object {

        const val LOCK_ACTIVITY_KEY = "${packageName}.${className}Activity"

        fun start(context: Context) {
            context.startActivity(
                Intent(context, ${className}Activity::class.java)
            )

        }
    }

    //inject presenter
    @Inject lateinit var presenter: ${className}Presenter

    override fun attachView() {
        presenter.attachView(this)
    }

    override fun detachView() {
        presenter.detachView()
    }


    override fun layoutId(): Int = R.layout.${layoutName}

    override fun onCreate(savedInstanceState: Bundle?) {
        AndroidInjection.inject(this)
        super.onCreate(savedInstanceState)
        attachView()


    }
}
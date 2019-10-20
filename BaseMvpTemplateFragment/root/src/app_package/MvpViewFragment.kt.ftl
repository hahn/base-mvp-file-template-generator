package ${escapeKotlinIdentifiers(packageName)}

import android.content.Context
import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import dagger.android.support.AndroidSupportInjection
import javax.inject.Inject
import id.infokes.app.R
import id.infokes.app.feature.base.BaseMvpFragment
import kotlinx.android.synthetic.main.${layoutName}.*

/*
* After fragment created, you must:
* - inject this activity in core/di/module/FeatureModule.kt, like this:
*    @PerFeature
*    @ContributesAndroidInjector(modules = [${className}Module::class])
*    abstract fun bind${className}Fragment(): ${className}Fragment
* 
*/

class ${className}Fragment : BaseMvpFragment(), ${className}View {

    //inject presenter
    @Inject lateinit var presenter: ${className}Presenter

    override fun attachView() {
        presenter.attachView(this)
    }

    override fun detachPresenter() {
        presenter.detachView()
    }

    override fun layoutId(): Int = R.layout.${layoutName}

    override fun onAttach(context: Context) {
        AndroidSupportInjection.inject(this)
        super.onAttach(context)
        
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        attachView()

    }
}
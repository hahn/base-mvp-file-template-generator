package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides
import ${applicationPackage}.core.di.PerFeature

@Module
class ${className}Module {

    @PerFeature
    @Provides
    fun provides${className}Presenter() = ${className}Presenter()
}
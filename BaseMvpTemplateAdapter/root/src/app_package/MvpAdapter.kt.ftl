package ${escapeKotlinIdentifiers(packageName)}

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import ${applicationPackage}.R
import kotlinx.android.synthetic.main.${layoutName}.view.*

class ${className}Adapter(private val items: MutableList<${pojoName}>, private val listener: (${pojoName}) -> Unit) : RecyclerView.Adapter<${className}Adapter.DataViewHolder>() {
    
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): DataViewHolder {
        val v = LayoutInflater.from(parent.context)
            .inflate(R.layout.${layoutName}, parent, false)
        return DataViewHolder(v)
    }

    override fun getItemCount(): Int = items.size

    override fun onBindViewHolder(holder: DataViewHolder, position: Int) {
        holder.bind(items[position], listener)
    }

    inner class DataViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        fun bind(item: ${pojoName}, listener: (${pojoName}) -> Unit) = with(itemView) {
            // sample use:
            // tvName.text = ${pojoName}.value

            setOnClickListener { listener(item) }
        }
    }

}
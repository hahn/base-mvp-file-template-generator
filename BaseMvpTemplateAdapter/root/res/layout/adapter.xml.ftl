<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
              xmlns:tools="http://schemas.android.com/tools"
              android:orientation="vertical"
              android:layout_width="match_parent"
              android:layout_height="wrap_content"
              android:layout_marginStart="16dp"
              android:layout_marginEnd="16dp"
              android:layout_marginTop="16dp">

    <TextView android:id="@+id/tvName"
              android:layout_width="match_parent"
              android:layout_height="wrap_content"
              tools:text="Name Repo" android:textStyle="bold"
              android:textAppearance="@style/TextAppearance.AppCompat.Medium"/>

    <TextView android:id="@+id/tvDescription"
              android:layout_width="match_parent"
              android:layout_height="wrap_content" tools:text="description"
              android:textAppearance="@style/TextAppearance.AppCompat.Small"/>


</LinearLayout>
### resources
* [android glossary](https://developers.google.com/android/for-all/vocab-words/?hl=en)
* [udacity XML visualizer](http://labs.udacity.com/android-visualizer/#/android/text-view)
* [common android views cheat sheet](https://drive.google.com/file/d/0B5XIkMkayHgRMVljUVIyZzNmQUU/view)

### views
* ViewGroups / layouts(check terms)
  * nested viewgroups will get increasingly more taxing/expensive
  * `LinearLayout` - children arranged in a vertical column or horizontal row
    * attributes
      * orientation
        * `android:orientation="horizontal"`
        * `android:orientation="vertical"`
  * `RelativeLayout` - children arranged relative to the parent (children can also be aligned relative to children)
    * layout_align values automatically set to false (can leave them undefined if )
    * `android:layout_alignParentTop`
    * `android:layout_alignParentBottom`
    * `android:layout_alignParentLeft`
    * `android:layout_alignParentRight`
    * `android:layout_centerVertical`
    * with view ids
      * android:id="@+id/name_of_view" <- + is defining the id
      * android:layout_toLeftOf="@id/name_of_view"
  * syntax
    * ```xml
      <ViewGroup
        xmlns:android="http://schemas.android.com/apk/res/android"
        viewgroup attributes
        viewgroup attributes>

        <Child1
          child1 attributes
          child1 attributes />

        <Child2
          child2 attributes
          child2 attributes />

      </ViewGroup>
* Views
  * `TextView` ( [docs](https://developer.android.com/reference/android/widget/TextView.html) )
    * textSize uses sp (scale independent pixels)
      * [google's guidelines for typography](http://www.google.com/design/spec/style/typography.html#typography-styles) - gives examples of sizing
      * [more notes on font sizing](https://plus.google.com/+AndroidDevelopers/posts/gQuBtnuk6iG) - aka - don't use too many different font sizes + instead use Android defaults:
        * `android:textAppearance="?android:textAppearanceLarge"` 
        * `android:textAppearance="?android:textAppearanceMedium"` 
        * `android:textAppearance="?android:textAppearanceSmall" ` 
  * `ImageView`
  * `Button`
* XML syntax
  * view written in CamelCase
  * attributes --> `android:attributename="attribute value"` --> ie: `android:text="this is some text"`
    * dp used as hard-coded measurement (density-independent pixels)
    * `wrap_content` will adjust view size to the content 
    * `match_parent` will adjust to match the parents sizing
    * colors will use american-english spelling (ie 'gray' not 'grey')
    * textSize uses sp (scale independent pixels)
      * [google's guidelines for typography](http://www.google.com/design/spec/style/typography.html#typography-styles) - gives examples of sizing
      * [more notes on font sizing](https://plus.google.com/+AndroidDevelopers/posts/gQuBtnuk6iG) - aka - don't use too many different font sizes + instead use Android defaults:
        * `android:textAppearance="?android:textAppearanceLarge"` 
        * `android:textAppearance="?android:textAppearanceMedium"` 
        * `android:textAppearance="?android:textAppearanceSmall" `  
    * colors 
      * only some colors are supported via words
      * otherwise use hex colors
      * [color palette](https://material.io/guidelines/style/color.html#)
* Views can have other views as children
* other terms
  * dp = density-independent pixels

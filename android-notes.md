### resources
* [android glossary](https://developers.google.com/android/for-all/vocab-words/?hl=en)
* [udacity XML visualizer](http://labs.udacity.com/android-visualizer/#/android/text-view)
* [common android views cheat sheet](https://drive.google.com/file/d/0B5XIkMkayHgRMVljUVIyZzNmQUU/view)

### views
* example types
  * `TextView` ( [docs](https://developer.android.com/reference/android/widget/TextView.html) )
  * `ImageView`
  * `Button`
  * `LinearLayout`
* XML syntax
  * view written in CamelCase
  * attributes --> `android:attributename="attribute value"` --> ie: `android:text="this is some text"`
    * dp used as hard-coded measurement (density-independent pixels)
    * `wrap_content` will adjust view size to the content 
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
    * images
      *
* Views can have other views as children
* other terms
  * dp = density-independent pixels

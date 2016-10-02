def reverse(word)
  # base case
    # when word length is 1, return word
  if word.length == 1
    return word
  end
  # recursive call
  word[-1] + reverse(word[0...-1])
end


reverse("hello")


### RUBY STACK ###
# word length is 5 --> doesnt go into if block
# word: "hello"
# return: "o" + reverse("hell")
# ^^^ back up return: "olleh"
  # word: "hell"
  # return: "l" + reverse("hel")
  # ^^^ back up return: "lleh"
    #word: "hel"
    # return: "l" + reverse("he")
    # ^^^ back up return: "leh"
      # word: "he" 
      # return: "e" + reverse("h")
      # ^^^ back up return: "eh"
        # word: "h"
        # IF CONDITION IS MET
        # return: "h"
        # ^^^ back up return: "h"
# go back up stack

# stack level to deep --> running too many of these ^ 



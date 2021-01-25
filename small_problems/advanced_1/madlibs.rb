=begin
----- Problem -----
write a madlibs program that reads in some text from a text file that you have created
and then plugs in a selection of randomized nouns, verbs, adjectives and adverbs into
that text and prints it. 

build list of nouns, verbs, adjectives and adverbs directly into program
text data should come from external source

----- Example -----
Output:
The sleepy brown cat noisily
licks the sleepy yellow
dog, who lazily licks his
tail and looks around.

Example text data:
The %{adjective} brown %{noun} %{adverb}
%{verb} the %{adjective} yellow
%{noun}, who %{adverb} %{verb} his
%{noun} and looks around.

Example replacement words:
adjectives: quick lazy sleepy ugly
nouns: fox dog head leg
verbs: jumps lifts bites licks
adverb: easily lazily noisily excitedly

----- Data Structure -----
array of strings, text data

----- Algorithm -----
load text files
iterate thru words
- replace blanks with random 

=end
ADJECTIVES = %w( quick lazy sleepy ugly)
NOUNS = %w( fox dog head leg cat mouse)
VERBS = %w(jumps lifts bites licks kicks runs)
ADVERBS = %w(easily lazily noisily excitedly happily joyfully)

text = File.read("example_text_data.txt")
sentences = text.split

sentences.map! do |word|
  format(word, noun: NOUNS.sample,
                        verb: VERBS.sample,
                        adjective: ADJECTIVES.sample,
                        adverb: ADVERBS.sample)
end

p sentences.join(' ')



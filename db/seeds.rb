# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Amy", email: "amy@amyzon.dev", password: "testing1")

ron_rash = User.create!(name: "Ron Rash", email: "ron@ron_rash.dev", password: "testing1")

books = [
  { title: "Serena", price: 15.99, body: "Thou spongy doghearted pigeon-egg! Thou adulterate decayed horse-drench! Thou base clapper-clawed boar-pig! Thou soulless tallow-faced clack-dish! Thou dissembling fool-born eternal devil! Thou gleeking fly-bitten bum-bailey! Thou jarring ill-bred no bowels! Thou creeping common-kissing malt-worm! Thou rank prick-eared coxcomb!", author: "Chaucer" },
  { title: "One Foot in Eden", price: 24.99, author: "Shakespear", body: "Thou clay-brained guts, thou knotty-pated fool, thou whoreson obscene greasy tallow-catch! That trunk of humours, that bolting-hutch of beastliness, that swollen parcel of dropsies, that huge bombard of sack, that stuffed cloak-bag of guts, that roasted Manningtree ox with pudding in his belly, that reverend vice, that grey Iniquity, that father ruffian, that vanity in years? You starvelling, you eel-skin, you dried neat’s-tongue, you bull’s-pizzle, you stock-fish–O for breath to utter what is like thee!-you tailor’s-yard, you sheath, you bow-case, you vile standing tuck!"},
  { title: "Saints at the River", price: 24.99, author: "King", body: "Thou accursed guts-griping promise-breaker! Thou clouted pox-marked canker-blossom! Thou appeareth nothing to me but a foul and pestilent congregation of vapours. Thou clouted pox-marked canker-blossom! Thou slanderous clay-brained fustilarian! Thou wayward rough-hewn malt-horse! Thou dankish motley-minded bear-whelp! Thou withered bat-fowling imbossed carbunkle!" },
  { title: "Burning Bright", price: 12.99, author: "Tolkein", body: "Thou surly doghearted bladder! Thou wimpled pox-marked whey-face! Thou qualling milk-livered measle! You are a tosser, wanker, git and mankey! A nutter, a lazy sod, a cream faced loon! Thou art as loathsome as a toad. Peace, ye fatguts! I do desire we may be better strangers.  Thou art a flesh-monger, fool and coward. You scullion, your rampillian, you fustilarian. I’ll tickle your catastrophe. Thou art as fat as butter." }
]
puts books
books.each do |book|
  Book.create!(title: book[:title], price: book[:price], author: book[:author], body: book[:body])
end

ron_rash.books << Book.all

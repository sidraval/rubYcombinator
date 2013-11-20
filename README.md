# Y Combinator in Ruby

An implementation of the Y combinator in Ruby. Lessons learned: We must use the applicative order Y combinator,
since Ruby apparently does not lazily evaluate its method calls -- the normal order Y combinator produces a
stack overflow error.
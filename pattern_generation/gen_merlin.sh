folders=(bench 
         bin
         lib/generators 
         lib/implementations
         lib/utilities/patterns 
         lib/utilities/fun_rebind
         lib/utilities/pat_playground
         test)

for f in ${folders[@]}
do
    dune ocaml dump-dot-merlin $f | sed '/^INDEX/d' > ./$f/.merlin && echo "REC" >> ./$f/.merlin;
done

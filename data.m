for i=1:10, p(i:10)=sin(i)+rand(1), end
for i=1:10, pp(i:10)=sin(i)+rand(1), end
sin_rand_10=mutualinfo(p,pp)
for i=10:100, p(i:100)=sin(i)+rand(1), end
for i=1:100, pp(i:100)=sin(i)+rand(1), end
sin_rand_100=mutualinfo(p,pp)
for i=100:1000, p(i:1000)=sin(i)+rand(1), end
for i=1:1000, pp(i:1000)=sin(i)+rand(1), end
sin_rand_1000=mutualinfo(p,pp)

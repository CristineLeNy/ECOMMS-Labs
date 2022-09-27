%Import file
filename="C:\Users\Cristine\Downloads\ytmp3free.cc_sweet-caroline-youtubemp3free.org.mp3";

%make into sound file and play
[y,Fs]=audioread(filename);
sound(y,Fs);

%graph sound 
signal=y(:,1);
t=0:8981615;
plot(t,signal');
axis ([-1 8981616 -1 1]);
title('Sweet Caroline');
xlabel('time');
ylabel('audio');
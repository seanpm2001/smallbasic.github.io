
'#sec:Main
'' mus.bas
'' 01/05/2001

read count

dim title(count)
dim music(count)

play "V50"

for i=1 to count
	read title(i)
	read music(i)
next

repeat
	cls
	for i=1 to count
		? i,title(i)
	next
	at 0,149:input k
	if k>0 and k<=count
		cls
		? cat(1);title(k);cat(0)
		? music(k)
		play music(k)
	fi
until k=0
end

data 10
data "Menuet by J. Sebastian Bach"
data "mbT180L8O3MN O4D4O3MLGABO4C O4D4O3MNG4MLG4 O4MNE4MLCDEF# O4G4O3MNG4MLG4 O4MNC4MLDCO3BA O3MNB4MLO4CO3BAG O3MNA4MLBAGF# G2.MN"

data "Revilie"
data "MB MN T180  O2 C8.C16 F8 C8 F8 A8 F4 F8.F16 A8 F8 A8 O3C8 O2 A4 F8.A16 O3 C4  O2 A8.F16 C4 C8.C16 F4 F8.F16 F4"

data "Taps"
data "T120 MN MB  O3L8C.L16C L2F.L8C.L16F  L2A.L8C.L16F L4A L8C L16F L4A L8C L16F L2A.  O3 L8F.L16A ML O4L2C MN O3L4A L4F L2C.  O3L8C.L16C ML L1F MN L4F"

data "Anchors Away"
data "MB T200O3L4 MLCCMNEGMLAL8AMNL8EL4L2AO4CL4DO3GO4L1C"

data "Battle Hymn of the Republic"
data "mbT120 O3 L8  F. F. F16 F. E16 D. F16 B-. >C16 D. D16 D. C16 <B-4  B-. A16 G. G16 G. A16 B-. A16 B-. G16 F. G16 F. D16 F4  F. F16 F. F16 F. E16 D. F16 B-. >C16 D. D16 D. C16 <B-4  B-4 >C4 C4 <B-4 A4 B-2 P2  F4. E D. F16 B-. >C16 D2 <B-4 P4 G4. A B-. A16 B-. G16 F2 D4 P4  F4. E D. F16 B-. >C16 D2 <B-4 B-4 >C4 C4 <B-4 A4 B-2"

data "Dixie"
data "MBT140O3E8C8C8C16D16E16F16G8G8G8E8A8A8A8.G16A8.G16  A16B18O4C16D16E4.C16O3G16O4C4.O3G16E16G4.D16E16C4.  T140O3E8C8C8C16D16E16F16G8G8G8E8A8A8A8.G16A8.G16  A16B18O4C16D16E4.C16O3G16O4C4.O3G16E16G4.D16E16C4.  T140O4C8E8D8C8O3A8O4C4O3A8O4D4.O3A8O4D4.O3G8O4C8  E8D8C8O3A8B8O4C8.O3A16G8E8O4C8O3E8E8D4E8C4.  T140E8D4.F8E8G8O4E8.C16D8C4O3E8C4.E8D4.F8E8G8O4E8.C16D8C4."

data  "Alex''s Theme"
data  "mbo3l8f#p8a8.mlf#16mnf#16f#16b8f#ef#p8o4c#8.o3mlf#16mnf#16f#16  o4dc#o3af#o4c#F#o3f#16mle16mne16e16c#g#mlf#f#4p4p3  mbo3l8f#p8a8.mlf#16mnf#16f#16b8f#ef#p8o4c#8.o3mlf#16mnf#16f#16  o4dc#o3af#o4c#F#o3f#16mle16mne16e16c#g#mlf#f#4p4p3  l8o2f#p8o2f#.o2mle16mne16o2e16o1c#o2c#o1ef#p8o2f#p8p16o1c#1  6o2c#ef#o1do2p8d.o1mle16mne16o2e16o1c#ef#o2f#p4p16e16c#o1ba"

data "Bagpipes"
data  "mbT200MN  O2L8AO3L4DL8DDEFL4EL8DL4DL8O2AO3DEFGAB-L2AP8  O3L8AO4L4DL8DDCO3B-L4AL8AL4AL8FL4AL8AGFEL4FL8DL4D  O3L8EL4FL8FGAB-L4AL8AO4L4DP8O3L8DEFGFEDCL2DP8L8DL2EP8L8EFGFEDCL2D  T200MN  O2L8AO3L4DL8DDEFL4EL8DL4DL8O2AO3DEFGAB-L2AP8  O3L8AO4L4DL8DDCO3B-L4AL8AL4AL8FL4AL8AGFEL4FL8DL4D  O3L8EL4FL8FGAB-L4AL8AO4L4DP8O3L8DEFGFEDCL2DP8L8DL2EP8L8EFGFEDCL2D  L1D"

data "Jingle Bells"
data "mbT150 O3 L8BBL4BL8BBL4BL8B>D<GAL2B L8>CCCCC<BBBBAABL4A>D<  O3 L8BBL4BL8BBL4BL8B>D<GAL2B L8>CCCCC<BBB>DDC<AL2G"

data "Happy Birthday to You"
data "MNT150L8O4CCL4DCFL2EL8CCL4DCGL2FL8CCL4>C<AFEL2DL8A+A+ L4AFGL2FL8CCL4DCFL2EL8CCL4DCGL2FL8CCL4>C<AFEL2DL8A+A+ L4AFGL2F"
'

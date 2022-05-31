lbl_803A10FC:
/* 803A10FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A1100  7C 08 02 A6 */	mflr r0
/* 803A1104  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A1108  38 00 00 00 */	li r0, 0
/* 803A110C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A1110  7C 7F 1B 78 */	mr r31, r3
/* 803A1114  98 03 00 0A */	stb r0, 0xa(r3)
/* 803A1118  88 03 00 08 */	lbz r0, 8(r3)
/* 803A111C  28 00 00 00 */	cmplwi r0, 0
/* 803A1120  41 82 00 10 */	beq lbl_803A1130
/* 803A1124  38 00 01 4D */	li r0, 0x14d
/* 803A1128  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 803A112C  48 00 00 0C */	b lbl_803A1138
lbl_803A1130:
/* 803A1130  38 00 02 64 */	li r0, 0x264
/* 803A1134  B0 1F 00 0E */	sth r0, 0xe(r31)
lbl_803A1138:
/* 803A1138  3C E0 80 64 */	lis r7, lit_398@ha /* 0x80641EC0@ha */
/* 803A113C  3C C0 80 64 */	lis r6, lit_399@ha /* 0x80641EC4@ha */
/* 803A1140  3C A0 80 64 */	lis r5, lit_400@ha /* 0x80641EC8@ha */
/* 803A1144  3C 80 80 64 */	lis r4, lit_401@ha /* 0x80641ECC@ha */
/* 803A1148  3C 60 80 64 */	lis r3, lit_389@ha /* 0x80641EB8@ha */
/* 803A114C  39 27 1E C0 */	addi r9, r7, lit_398@l /* 0x80641EC0@l */
/* 803A1150  39 06 1E C4 */	addi r8, r6, lit_399@l /* 0x80641EC4@l */
/* 803A1154  38 E5 1E C8 */	addi r7, r5, lit_400@l /* 0x80641EC8@l */
/* 803A1158  38 C4 1E CC */	addi r6, r4, lit_401@l /* 0x80641ECC@l */
/* 803A115C  38 A3 1E B8 */	addi r5, r3, lit_389@l /* 0x80641EB8@l */
/* 803A1160  C0 29 00 00 */	lfs f1, 0(r9)
/* 803A1164  38 7F 00 18 */	addi r3, r31, 0x18
/* 803A1168  C0 48 00 00 */	lfs f2, 0(r8)
/* 803A116C  38 9F 00 10 */	addi r4, r31, 0x10
/* 803A1170  C0 67 00 00 */	lfs f3, 0(r7)
/* 803A1174  C0 86 00 00 */	lfs f4, 0(r6)
/* 803A1178  C0 A5 00 00 */	lfs f5, 0(r5)
/* 803A117C  4B CB D2 99 */	bl func_8005E414
/* 803A1180  3C 60 80 64 */	lis r3, lit_390@ha /* 0x80641EBC@ha */
/* 803A1184  3C 80 80 64 */	lis r4, lit_402@ha /* 0x80641ED0@ha */
/* 803A1188  38 A3 1E BC */	addi r5, r3, lit_390@l /* 0x80641EBC@l */
/* 803A118C  C0 64 1E D0 */	lfs f3, lit_402@l(r4)  /* 0x80641ED0@l */
/* 803A1190  C0 25 00 00 */	lfs f1, 0(r5)
/* 803A1194  3C 60 80 64 */	lis r3, lit_389@ha /* 0x80641EB8@ha */
/* 803A1198  C1 03 1E B8 */	lfs f8, lit_389@l(r3)  /* 0x80641EB8@l */
/* 803A119C  38 7F 00 58 */	addi r3, r31, 0x58
/* 803A11A0  FC 40 08 90 */	fmr f2, f1
/* 803A11A4  D0 21 00 08 */	stfs f1, 8(r1)
/* 803A11A8  FC 80 08 90 */	fmr f4, f1
/* 803A11AC  FC A0 08 90 */	fmr f5, f1
/* 803A11B0  FC C0 08 90 */	fmr f6, f1
/* 803A11B4  FC E0 08 90 */	fmr f7, f1
/* 803A11B8  4B CB C3 31 */	bl guLookAt
/* 803A11BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A11C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A11C4  7C 08 03 A6 */	mtlr r0
/* 803A11C8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A11CC  4E 80 00 20 */	blr 

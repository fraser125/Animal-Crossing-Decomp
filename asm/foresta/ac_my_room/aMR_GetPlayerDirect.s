lbl_804782CC:
/* 804782CC  3C 80 80 64 */	lis r4, lit_3174@ha /* 0x80644A2C@ha */
/* 804782D0  C0 43 00 00 */	lfs f2, 0(r3)
/* 804782D4  C0 24 4A 2C */	lfs f1, lit_3174@l(r4)  /* 0x80644A2C@l */
/* 804782D8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804782DC  40 81 00 0C */	ble lbl_804782E8
/* 804782E0  38 60 00 01 */	li r3, 1
/* 804782E4  4E 80 00 20 */	blr 
lbl_804782E8:
/* 804782E8  3C 80 80 64 */	lis r4, lit_3175@ha /* 0x80644A30@ha */
/* 804782EC  C0 04 4A 30 */	lfs f0, lit_3175@l(r4)  /* 0x80644A30@l */
/* 804782F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804782F4  40 80 00 0C */	bge lbl_80478300
/* 804782F8  38 60 00 03 */	li r3, 3
/* 804782FC  4E 80 00 20 */	blr 
lbl_80478300:
/* 80478300  C0 43 00 04 */	lfs f2, 4(r3)
/* 80478304  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80478308  40 81 00 0C */	ble lbl_80478314
/* 8047830C  38 60 00 00 */	li r3, 0
/* 80478310  4E 80 00 20 */	blr 
lbl_80478314:
/* 80478314  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80478318  40 80 00 0C */	bge lbl_80478324
/* 8047831C  38 60 00 02 */	li r3, 2
/* 80478320  4E 80 00 20 */	blr 
lbl_80478324:
/* 80478324  38 60 00 00 */	li r3, 0
/* 80478328  4E 80 00 20 */	blr 
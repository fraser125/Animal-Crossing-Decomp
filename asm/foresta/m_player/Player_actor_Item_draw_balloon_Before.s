lbl_804E323C:
/* 804E323C  2C 05 00 04 */	cmpwi r5, 4
/* 804E3240  40 80 00 48 */	bge lbl_804E3288
/* 804E3244  2C 05 00 01 */	cmpwi r5, 1
/* 804E3248  40 80 00 08 */	bge lbl_804E3250
/* 804E324C  48 00 00 3C */	b lbl_804E3288
lbl_804E3250:
/* 804E3250  80 C3 00 00 */	lwz r6, 0(r3)
/* 804E3254  3C A0 E7 00 */	lis r5, 0xe700
/* 804E3258  38 80 00 00 */	li r4, 0
/* 804E325C  3C 60 CE 00 */	lis r3, 0xce00
/* 804E3260  80 E6 02 D0 */	lwz r7, 0x2d0(r6)
/* 804E3264  38 00 00 50 */	li r0, 0x50
/* 804E3268  90 A7 00 00 */	stw r5, 0(r7)
/* 804E326C  90 87 00 04 */	stw r4, 4(r7)
/* 804E3270  38 E7 00 08 */	addi r7, r7, 8
/* 804E3274  7C E4 3B 78 */	mr r4, r7
/* 804E3278  90 67 00 00 */	stw r3, 0(r7)
/* 804E327C  38 E7 00 08 */	addi r7, r7, 8
/* 804E3280  90 04 00 04 */	stw r0, 4(r4)
/* 804E3284  90 E6 02 D0 */	stw r7, 0x2d0(r6)
lbl_804E3288:
/* 804E3288  38 60 00 01 */	li r3, 1
/* 804E328C  4E 80 00 20 */	blr 
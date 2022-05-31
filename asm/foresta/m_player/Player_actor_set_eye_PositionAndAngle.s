lbl_804D6FE0:
/* 804D6FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6FE4  7C 08 02 A6 */	mflr r0
/* 804D6FE8  3C 80 80 64 */	lis r4, lit_1400@ha /* 0x80646A34@ha */
/* 804D6FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6FF0  C0 24 6A 34 */	lfs f1, lit_1400@l(r4)  /* 0x80646A34@l */
/* 804D6FF4  4B E9 D1 DD */	bl func_803741D0
/* 804D6FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6FFC  7C 08 03 A6 */	mtlr r0
/* 804D7000  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7004  4E 80 00 20 */	blr 

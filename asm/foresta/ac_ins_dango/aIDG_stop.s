lbl_80597D9C:
/* 80597D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597DA0  7C 08 02 A6 */	mflr r0
/* 80597DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80597DAC  7C 7F 1B 78 */	mr r31, r3
/* 80597DB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80597DB4  7C 9E 23 78 */	mr r30, r4
/* 80597DB8  4B FF FD 45 */	bl aIDG_chk_water_attr
/* 80597DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80597DC0  40 82 00 28 */	bne lbl_80597DE8
/* 80597DC4  3C 60 80 65 */	lis r3, lit_579@ha /* 0x80649E90@ha */
/* 80597DC8  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 80597DCC  C0 03 9E 90 */	lfs f0, lit_579@l(r3)  /* 0x80649E90@l */
/* 80597DD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80597DD4  40 80 00 14 */	bge lbl_80597DE8
/* 80597DD8  7F E3 FB 78 */	mr r3, r31
/* 80597DDC  7F C5 F3 78 */	mr r5, r30
/* 80597DE0  38 80 00 00 */	li r4, 0
/* 80597DE4  48 00 04 71 */	bl aIDG_setupAction
lbl_80597DE8:
/* 80597DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597DF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80597DF4  7C 08 03 A6 */	mtlr r0
/* 80597DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80597DFC  4E 80 00 20 */	blr 

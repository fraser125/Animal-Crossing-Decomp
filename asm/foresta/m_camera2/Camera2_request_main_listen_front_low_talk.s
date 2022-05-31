lbl_80381E74:
/* 80381E74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80381E78  7C 08 02 A6 */	mflr r0
/* 80381E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80381E80  39 61 00 20 */	addi r11, r1, 0x20
/* 80381E84  4B D1 90 4D */	bl func_8009AED0
/* 80381E88  7C 7C 1B 78 */	mr r28, r3
/* 80381E8C  A8 65 00 36 */	lha r3, 0x36(r5)
/* 80381E90  7C BE 2B 78 */	mr r30, r5
/* 80381E94  7C 9D 23 78 */	mr r29, r4
/* 80381E98  7C DF 33 78 */	mr r31, r6
/* 80381E9C  48 03 8C 55 */	bl sin_s
/* 80381EA0  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 80381EA4  C0 03 13 54 */	lfs f0, lit_474@l(r3)  /* 0x80641354@l */
/* 80381EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80381EAC  40 80 00 0C */	bge lbl_80381EB8
/* 80381EB0  39 00 78 38 */	li r8, 0x7838
/* 80381EB4  48 00 00 08 */	b lbl_80381EBC
lbl_80381EB8:
/* 80381EB8  39 00 87 C8 */	li r8, -30776
lbl_80381EBC:
/* 80381EBC  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 80381EC0  3C 80 80 64 */	lis r4, lit_474@ha /* 0x80641354@ha */
/* 80381EC4  38 A3 13 6C */	addi r5, r3, lit_508@l /* 0x8064136C@l */
/* 80381EC8  C0 44 13 54 */	lfs f2, lit_474@l(r4)  /* 0x80641354@l */
/* 80381ECC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80381ED0  7F 83 E3 78 */	mr r3, r28
/* 80381ED4  7F A4 EB 78 */	mr r4, r29
/* 80381ED8  7F C5 F3 78 */	mr r5, r30
/* 80381EDC  7F E6 FB 78 */	mr r6, r31
/* 80381EE0  38 E0 03 E8 */	li r7, 0x3e8
/* 80381EE4  48 00 00 AD */	bl Camera2_request_main_cust_talk
/* 80381EE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80381EEC  4B D1 90 31 */	bl func_8009AF1C
/* 80381EF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80381EF4  7C 08 03 A6 */	mtlr r0
/* 80381EF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80381EFC  4E 80 00 20 */	blr 

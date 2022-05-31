lbl_805F46B4:
/* 805F46B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F46B8  7C 08 02 A6 */	mflr r0
/* 805F46BC  38 C0 00 3D */	li r6, 0x3d
/* 805F46C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F46C4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805F46C8  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805F46CC  80 07 00 00 */	lwz r0, 0(r7)
/* 805F46D0  1C A0 00 B4 */	mulli r5, r0, 0xb4
/* 805F46D4  38 A5 00 08 */	addi r5, r5, 8
/* 805F46D8  7C A7 2A 14 */	add r5, r7, r5
/* 805F46DC  4B FF DA F1 */	bl mTG_chg_tag_func2
/* 805F46E0  38 60 00 33 */	li r3, 0x33
/* 805F46E4  48 03 96 21 */	bl sAdo_SysTrgStart
/* 805F46E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F46EC  7C 08 03 A6 */	mtlr r0
/* 805F46F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805F46F4  4E 80 00 20 */	blr 

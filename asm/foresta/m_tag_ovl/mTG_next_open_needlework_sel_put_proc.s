lbl_805F5E40:
/* 805F5E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5E44  7C 08 02 A6 */	mflr r0
/* 805F5E48  38 C0 00 3C */	li r6, 0x3c
/* 805F5E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5E50  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805F5E54  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805F5E58  80 07 00 00 */	lwz r0, 0(r7)
/* 805F5E5C  1C A0 00 B4 */	mulli r5, r0, 0xb4
/* 805F5E60  38 A5 00 08 */	addi r5, r5, 8
/* 805F5E64  7C A7 2A 14 */	add r5, r7, r5
/* 805F5E68  4B FF C3 65 */	bl mTG_chg_tag_func2
/* 805F5E6C  38 60 00 33 */	li r3, 0x33
/* 805F5E70  48 03 7E 95 */	bl sAdo_SysTrgStart
/* 805F5E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F5E78  7C 08 03 A6 */	mtlr r0
/* 805F5E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 805F5E80  4E 80 00 20 */	blr 

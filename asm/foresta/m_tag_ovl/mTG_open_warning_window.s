lbl_805F2E20:
/* 805F2E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F2E24  7C 08 02 A6 */	mflr r0
/* 805F2E28  38 C0 00 00 */	li r6, 0
/* 805F2E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F2E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F2E34  7C 9F 23 78 */	mr r31, r4
/* 805F2E38  38 80 00 10 */	li r4, 0x10
/* 805F2E3C  93 C1 00 08 */	stw r30, 8(r1)
/* 805F2E40  7C 7E 1B 78 */	mr r30, r3
/* 805F2E44  4B DF C8 99 */	bl mSM_open_submenu
/* 805F2E48  38 00 00 02 */	li r0, 2
/* 805F2E4C  7F C3 F3 78 */	mr r3, r30
/* 805F2E50  90 1F 00 04 */	stw r0, 4(r31)
/* 805F2E54  38 80 00 00 */	li r4, 0
/* 805F2E58  38 A0 00 00 */	li r5, 0
/* 805F2E5C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 805F2E60  4B FF C9 55 */	bl mTG_return_tag_init
/* 805F2E64  38 60 10 03 */	li r3, 0x1003
/* 805F2E68  48 03 AE 9D */	bl sAdo_SysTrgStart
/* 805F2E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F2E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F2E74  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F2E78  7C 08 03 A6 */	mtlr r0
/* 805F2E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 805F2E80  4E 80 00 20 */	blr 

lbl_80596634:
/* 80596634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80596638  7C 08 02 A6 */	mflr r0
/* 8059663C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80596640  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 80596644  2C 00 00 0E */	cmpwi r0, 0xe
/* 80596648  41 82 00 24 */	beq lbl_8059666C
/* 8059664C  40 80 00 2C */	bge lbl_80596678
/* 80596650  2C 00 00 0D */	cmpwi r0, 0xd
/* 80596654  40 80 00 08 */	bge lbl_8059665C
/* 80596658  48 00 00 20 */	b lbl_80596678
lbl_8059665C:
/* 8059665C  38 A3 00 28 */	addi r5, r3, 0x28
/* 80596660  38 80 00 A2 */	li r4, 0xa2
/* 80596664  48 09 78 E1 */	bl sAdo_OngenPos
/* 80596668  48 00 00 10 */	b lbl_80596678
lbl_8059666C:
/* 8059666C  38 A3 00 28 */	addi r5, r3, 0x28
/* 80596670  38 80 00 A3 */	li r4, 0xa3
/* 80596674  48 09 78 D1 */	bl sAdo_OngenPos
lbl_80596678:
/* 80596678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059667C  7C 08 03 A6 */	mtlr r0
/* 80596680  38 21 00 10 */	addi r1, r1, 0x10
/* 80596684  4E 80 00 20 */	blr 

lbl_803F9F60:
/* 803F9F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F9F64  7C 08 02 A6 */	mflr r0
/* 803F9F68  28 05 00 03 */	cmplwi r5, 3
/* 803F9F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F9F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F9F74  7C 9F 23 78 */	mr r31, r4
/* 803F9F78  38 80 00 00 */	li r4, 0
/* 803F9F7C  93 C1 00 08 */	stw r30, 8(r1)
/* 803F9F80  7C 7E 1B 78 */	mr r30, r3
/* 803F9F84  41 80 00 08 */	blt lbl_803F9F8C
/* 803F9F88  38 A0 00 00 */	li r5, 0
lbl_803F9F8C:
/* 803F9F8C  3C 60 81 17 */	lis r3, l_aram_block_p_table@ha /* 0x8117161C@ha */
/* 803F9F90  54 A0 10 3A */	slwi r0, r5, 2
/* 803F9F94  38 63 16 1C */	addi r3, r3, l_aram_block_p_table@l /* 0x8117161C@l */
/* 803F9F98  7C 63 00 2E */	lwzx r3, r3, r0
/* 803F9F9C  28 03 00 00 */	cmplwi r3, 0
/* 803F9FA0  41 82 00 20 */	beq lbl_803F9FC0
/* 803F9FA4  7F C4 F3 78 */	mr r4, r30
/* 803F9FA8  7F E5 FB 78 */	mr r5, r31
/* 803F9FAC  4B C6 7B E1 */	bl JC__JKRAramToMainRam_block
/* 803F9FB0  7F C3 F3 78 */	mr r3, r30
/* 803F9FB4  7F E4 FB 78 */	mr r4, r31
/* 803F9FB8  4B C7 FB CD */	bl DCFlushRange
/* 803F9FBC  38 80 00 01 */	li r4, 1
lbl_803F9FC0:
/* 803F9FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F9FC4  7C 83 23 78 */	mr r3, r4
/* 803F9FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F9FCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F9FD0  7C 08 03 A6 */	mtlr r0
/* 803F9FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803F9FD8  4E 80 00 20 */	blr 

lbl_8051BB64:
/* 8051BB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BB68  7C 08 02 A6 */	mflr r0
/* 8051BB6C  3C A0 80 6A */	lis r5, process@ha /* 0x806A0178@ha */
/* 8051BB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BB74  54 80 10 3A */	slwi r0, r4, 2
/* 8051BB78  38 A5 01 78 */	addi r5, r5, process@l /* 0x806A0178@l */
/* 8051BB7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051BB80  7C 9F 23 78 */	mr r31, r4
/* 8051BB84  93 C1 00 08 */	stw r30, 8(r1)
/* 8051BB88  7C 7E 1B 78 */	mr r30, r3
/* 8051BB8C  93 E3 09 94 */	stw r31, 0x994(r3)
/* 8051BB90  7C 05 00 2E */	lwzx r0, r5, r0
/* 8051BB94  90 03 09 98 */	stw r0, 0x998(r3)
/* 8051BB98  4B FF FF 99 */	bl aEBR2_init_proc
/* 8051BB9C  7F C3 F3 78 */	mr r3, r30
/* 8051BBA0  7F E4 FB 78 */	mr r4, r31
/* 8051BBA4  4B FF EE 09 */	bl aEBR2_set_animation
/* 8051BBA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BBAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051BBB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051BBB4  7C 08 03 A6 */	mtlr r0
/* 8051BBB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BBBC  4E 80 00 20 */	blr 

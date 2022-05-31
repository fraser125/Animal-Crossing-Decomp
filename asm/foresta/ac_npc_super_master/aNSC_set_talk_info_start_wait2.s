lbl_80582C20:
/* 80582C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80582C24  7C 08 02 A6 */	mflr r0
/* 80582C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80582C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80582C30  7C 7F 1B 78 */	mr r31, r3
/* 80582C34  38 60 00 DA */	li r3, 0xda
/* 80582C38  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80582C3C  28 00 D0 0B */	cmplwi r0, 0xd00b
/* 80582C40  40 82 00 08 */	bne lbl_80582C48
/* 80582C44  38 60 00 DC */	li r3, 0xdc
lbl_80582C48:
/* 80582C48  4B FF F1 41 */	bl aNSC_get_msg_no
/* 80582C4C  4B E1 58 C9 */	bl mDemo_Set_msg_num
/* 80582C50  38 00 00 07 */	li r0, 7
/* 80582C54  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80582C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80582C5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80582C60  7C 08 03 A6 */	mtlr r0
/* 80582C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80582C68  4E 80 00 20 */	blr 

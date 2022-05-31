lbl_80570F28:
/* 80570F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570F2C  7C 08 02 A6 */	mflr r0
/* 80570F30  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80570F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570F3C  7C 7F 1B 78 */	mr r31, r3
/* 80570F40  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80570F44  3C 63 00 02 */	addis r3, r3, 2
/* 80570F48  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80570F4C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80570F50  28 00 00 02 */	cmplwi r0, 2
/* 80570F54  40 82 00 20 */	bne lbl_80570F74
/* 80570F58  38 60 00 04 */	li r3, 4
/* 80570F5C  38 80 00 01 */	li r4, 1
/* 80570F60  38 A0 00 03 */	li r5, 3
/* 80570F64  4B E2 74 D5 */	bl mDemo_Set_OrderValue
/* 80570F68  7F E3 FB 78 */	mr r3, r31
/* 80570F6C  38 80 00 0D */	li r4, 0xd
/* 80570F70  48 00 03 45 */	bl aNRG2_change_talk_proc
lbl_80570F74:
/* 80570F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570F7C  7C 08 03 A6 */	mtlr r0
/* 80570F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80570F84  4E 80 00 20 */	blr 

lbl_8053C468:
/* 8053C468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053C46C  7C 08 02 A6 */	mflr r0
/* 8053C470  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8053C474  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053C478  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8053C47C  3C 84 00 02 */	addis r4, r4, 2
/* 8053C480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053C484  3B E0 00 01 */	li r31, 1
/* 8053C488  93 C1 00 08 */	stw r30, 8(r1)
/* 8053C48C  7C 7E 1B 78 */	mr r30, r3
/* 8053C490  80 84 60 A0 */	lwz r4, 0x60a0(r4)
/* 8053C494  28 04 00 00 */	cmplwi r4, 0
/* 8053C498  41 82 00 50 */	beq lbl_8053C4E8
/* 8053C49C  81 84 00 04 */	lwz r12, 4(r4)
/* 8053C4A0  38 A0 00 02 */	li r5, 2
/* 8053C4A4  80 9E 08 A0 */	lwz r4, 0x8a0(r30)
/* 8053C4A8  7D 89 03 A6 */	mtctr r12
/* 8053C4AC  4E 80 04 21 */	bctrl 
/* 8053C4B0  2C 03 00 01 */	cmpwi r3, 1
/* 8053C4B4  40 82 00 34 */	bne lbl_8053C4E8
/* 8053C4B8  3C 60 80 6A */	lis r3, next_act_idx_1042@ha /* 0x806A35E4@ha */
/* 8053C4BC  88 BE 08 98 */	lbz r5, 0x898(r30)
/* 8053C4C0  38 03 35 E4 */	addi r0, r3, next_act_idx_1042@l /* 0x806A35E4@l */
/* 8053C4C4  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 8053C4C8  7C A5 02 14 */	add r5, r5, r0
/* 8053C4CC  7F C3 F3 78 */	mr r3, r30
/* 8053C4D0  88 A5 FF FF */	lbz r5, -1(r5)
/* 8053C4D4  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 8053C4D8  38 80 00 04 */	li r4, 4
/* 8053C4DC  38 C0 00 00 */	li r6, 0
/* 8053C4E0  48 00 2E C1 */	bl aNPC_set_request_act
/* 8053C4E4  3B E0 00 00 */	li r31, 0
lbl_8053C4E8:
/* 8053C4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053C4EC  7F E3 FB 78 */	mr r3, r31
/* 8053C4F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053C4F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053C4F8  7C 08 03 A6 */	mtlr r0
/* 8053C4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8053C500  4E 80 00 20 */	blr 

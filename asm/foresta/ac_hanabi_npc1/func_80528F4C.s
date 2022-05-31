lbl_80528F4C:
/* 80528F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80528F50  7C 08 02 A6 */	mflr r0
/* 80528F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80528F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80528F5C  4B B7 1F 79 */	bl func_8009AED4
/* 80528F60  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80528F64  7C 7D 1B 78 */	mr r29, r3
/* 80528F68  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80528F6C  7C 9E 23 78 */	mr r30, r4
/* 80528F70  3F E5 00 02 */	addis r31, r5, 2
/* 80528F74  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80528F78  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80528F7C  7D 89 03 A6 */	mtctr r12
/* 80528F80  4E 80 04 21 */	bctrl 
/* 80528F84  2C 03 00 01 */	cmpwi r3, 1
/* 80528F88  40 82 00 38 */	bne lbl_80528FC0
/* 80528F8C  3C 60 80 53 */	lis r3, aHN1_schedule_proc@ha /* 0x8052974C@ha */
/* 80528F90  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A107C@ha */
/* 80528F94  38 03 97 4C */	addi r0, r3, aHN1_schedule_proc@l /* 0x8052974C@l */
/* 80528F98  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80528F9C  38 A4 10 7C */	addi r5, r4, ct_data@l /* 0x806A107C@l */
/* 80528FA0  7F A3 EB 78 */	mr r3, r29
/* 80528FA4  7F C4 F3 78 */	mr r4, r30
/* 80528FA8  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80528FAC  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80528FB0  7D 89 03 A6 */	mtctr r12
/* 80528FB4  4E 80 04 21 */	bctrl 
/* 80528FB8  38 00 FF FF */	li r0, -1
/* 80528FBC  90 1D 08 F4 */	stw r0, 0x8f4(r29)
lbl_80528FC0:
/* 80528FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80528FC4  4B B7 1F 5D */	bl func_8009AF20
/* 80528FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80528FCC  7C 08 03 A6 */	mtlr r0
/* 80528FD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80528FD4  4E 80 00 20 */	blr 

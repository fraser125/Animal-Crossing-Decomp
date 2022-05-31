lbl_80516F64:
/* 80516F64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80516F68  7C 08 02 A6 */	mflr r0
/* 80516F6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80516F70  39 61 00 20 */	addi r11, r1, 0x20
/* 80516F74  4B B8 3F 61 */	bl func_8009AED4
/* 80516F78  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80516F7C  7C 7D 1B 78 */	mr r29, r3
/* 80516F80  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80516F84  7C 9E 23 78 */	mr r30, r4
/* 80516F88  3F E5 00 02 */	addis r31, r5, 2
/* 80516F8C  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80516F90  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80516F94  7D 89 03 A6 */	mtctr r12
/* 80516F98  4E 80 04 21 */	bctrl 
/* 80516F9C  2C 03 00 01 */	cmpwi r3, 1
/* 80516FA0  40 82 00 30 */	bne lbl_80516FD0
/* 80516FA4  3C 60 80 51 */	lis r3, aCD1_schedule_proc@ha /* 0x80517E40@ha */
/* 80516FA8  3C 80 80 6A */	lis r4, ct_data@ha /* 0x8069FE1C@ha */
/* 80516FAC  38 03 7E 40 */	addi r0, r3, aCD1_schedule_proc@l /* 0x80517E40@l */
/* 80516FB0  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80516FB4  38 A4 FE 1C */	addi r5, r4, ct_data@l /* 0x8069FE1C@l */
/* 80516FB8  7F A3 EB 78 */	mr r3, r29
/* 80516FBC  7F C4 F3 78 */	mr r4, r30
/* 80516FC0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80516FC4  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80516FC8  7D 89 03 A6 */	mtctr r12
/* 80516FCC  4E 80 04 21 */	bctrl 
lbl_80516FD0:
/* 80516FD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80516FD4  4B B8 3F 4D */	bl func_8009AF20
/* 80516FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80516FDC  7C 08 03 A6 */	mtlr r0
/* 80516FE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80516FE4  4E 80 00 20 */	blr 

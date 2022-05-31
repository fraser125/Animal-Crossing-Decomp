lbl_80557E3C:
/* 80557E3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557E40  7C 08 02 A6 */	mflr r0
/* 80557E44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557E48  39 61 00 20 */	addi r11, r1, 0x20
/* 80557E4C  4B B4 30 89 */	bl func_8009AED4
/* 80557E50  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80557E54  7C 7D 1B 78 */	mr r29, r3
/* 80557E58  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80557E5C  7C 9E 23 78 */	mr r30, r4
/* 80557E60  3F E5 00 02 */	addis r31, r5, 2
/* 80557E64  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80557E68  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80557E6C  7D 89 03 A6 */	mtctr r12
/* 80557E70  4E 80 04 21 */	bctrl 
/* 80557E74  2C 03 00 01 */	cmpwi r3, 1
/* 80557E78  40 82 00 30 */	bne lbl_80557EA8
/* 80557E7C  3C 60 80 56 */	lis r3, aMJN3_schedule_proc@ha /* 0x80558B64@ha */
/* 80557E80  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A69B4@ha */
/* 80557E84  38 03 8B 64 */	addi r0, r3, aMJN3_schedule_proc@l /* 0x80558B64@l */
/* 80557E88  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80557E8C  38 A4 69 B4 */	addi r5, r4, ct_data@l /* 0x806A69B4@l */
/* 80557E90  7F A3 EB 78 */	mr r3, r29
/* 80557E94  7F C4 F3 78 */	mr r4, r30
/* 80557E98  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80557E9C  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80557EA0  7D 89 03 A6 */	mtctr r12
/* 80557EA4  4E 80 04 21 */	bctrl 
lbl_80557EA8:
/* 80557EA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80557EAC  4B B4 30 75 */	bl func_8009AF20
/* 80557EB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557EB4  7C 08 03 A6 */	mtlr r0
/* 80557EB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80557EBC  4E 80 00 20 */	blr 

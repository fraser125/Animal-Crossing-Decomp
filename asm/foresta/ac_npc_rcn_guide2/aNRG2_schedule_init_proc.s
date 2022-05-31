lbl_80571E68:
/* 80571E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571E6C  7C 08 02 A6 */	mflr r0
/* 80571E70  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80571E74  3C A0 80 57 */	lis r5, aNRG2_think_proc@ha /* 0x80571E34@ha */
/* 80571E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571E7C  38 05 1E 34 */	addi r0, r5, aNRG2_think_proc@l /* 0x80571E34@l */
/* 80571E80  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80571E84  38 A0 00 06 */	li r5, 6
/* 80571E88  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80571E8C  3C E6 00 02 */	addis r7, r6, 2
/* 80571E90  38 C0 00 00 */	li r6, 0
/* 80571E94  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80571E98  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80571E9C  7D 89 03 A6 */	mtctr r12
/* 80571EA0  4E 80 04 21 */	bctrl 
/* 80571EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571EA8  7C 08 03 A6 */	mtlr r0
/* 80571EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80571EB0  4E 80 00 20 */	blr 

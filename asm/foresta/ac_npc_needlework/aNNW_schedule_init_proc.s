lbl_805660CC:
/* 805660CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805660D0  7C 08 02 A6 */	mflr r0
/* 805660D4  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 805660D8  3C A0 80 56 */	lis r5, aNNW_think_proc@ha /* 0x8056608C@ha */
/* 805660DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805660E0  38 05 60 8C */	addi r0, r5, aNNW_think_proc@l /* 0x8056608C@l */
/* 805660E4  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 805660E8  38 A0 00 06 */	li r5, 6
/* 805660EC  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 805660F0  3C E6 00 02 */	addis r7, r6, 2
/* 805660F4  38 C0 00 00 */	li r6, 0
/* 805660F8  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 805660FC  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80566100  7D 89 03 A6 */	mtctr r12
/* 80566104  4E 80 04 21 */	bctrl 
/* 80566108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056610C  7C 08 03 A6 */	mtlr r0
/* 80566110  38 21 00 10 */	addi r1, r1, 0x10
/* 80566114  4E 80 00 20 */	blr 

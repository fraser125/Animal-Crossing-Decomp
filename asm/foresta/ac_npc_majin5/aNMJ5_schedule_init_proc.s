lbl_80559CCC:
/* 80559CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559CD0  7C 08 02 A6 */	mflr r0
/* 80559CD4  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80559CD8  3C A0 80 56 */	lis r5, aNMJ5_think_proc@ha /* 0x80559C8C@ha */
/* 80559CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559CE0  38 05 9C 8C */	addi r0, r5, aNMJ5_think_proc@l /* 0x80559C8C@l */
/* 80559CE4  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80559CE8  38 A0 00 09 */	li r5, 9
/* 80559CEC  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80559CF0  3C E6 00 02 */	addis r7, r6, 2
/* 80559CF4  38 C0 00 00 */	li r6, 0
/* 80559CF8  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80559CFC  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80559D00  7D 89 03 A6 */	mtctr r12
/* 80559D04  4E 80 04 21 */	bctrl 
/* 80559D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559D0C  7C 08 03 A6 */	mtlr r0
/* 80559D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80559D14  4E 80 00 20 */	blr 

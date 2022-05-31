lbl_8058D608:
/* 8058D608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D60C  7C 08 02 A6 */	mflr r0
/* 8058D610  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8058D614  3C A0 80 59 */	lis r5, aTKN1_think_proc@ha /* 0x8058D5C8@ha */
/* 8058D618  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D61C  38 05 D5 C8 */	addi r0, r5, aTKN1_think_proc@l /* 0x8058D5C8@l */
/* 8058D620  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8058D624  38 A0 00 09 */	li r5, 9
/* 8058D628  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8058D62C  3C E6 00 02 */	addis r7, r6, 2
/* 8058D630  38 C0 00 00 */	li r6, 0
/* 8058D634  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8058D638  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058D63C  7D 89 03 A6 */	mtctr r12
/* 8058D640  4E 80 04 21 */	bctrl 
/* 8058D644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D648  7C 08 03 A6 */	mtlr r0
/* 8058D64C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D650  4E 80 00 20 */	blr 

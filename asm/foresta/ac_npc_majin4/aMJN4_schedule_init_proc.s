lbl_805597B8:
/* 805597B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805597BC  7C 08 02 A6 */	mflr r0
/* 805597C0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 805597C4  3C A0 80 56 */	lis r5, aMJN4_think_proc@ha /* 0x80559784@ha */
/* 805597C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805597CC  38 05 97 84 */	addi r0, r5, aMJN4_think_proc@l /* 0x80559784@l */
/* 805597D0  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 805597D4  38 A0 00 09 */	li r5, 9
/* 805597D8  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 805597DC  3C E6 00 02 */	addis r7, r6, 2
/* 805597E0  38 C0 00 00 */	li r6, 0
/* 805597E4  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 805597E8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 805597EC  7D 89 03 A6 */	mtctr r12
/* 805597F0  4E 80 04 21 */	bctrl 
/* 805597F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805597F8  7C 08 03 A6 */	mtlr r0
/* 805597FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80559800  4E 80 00 20 */	blr 

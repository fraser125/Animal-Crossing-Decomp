lbl_8054A130:
/* 8054A130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A134  7C 08 02 A6 */	mflr r0
/* 8054A138  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054A13C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054A140  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A144  3C A5 00 02 */	addis r5, r5, 2
/* 8054A148  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 8054A14C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8054A150  7C 00 18 40 */	cmplw r0, r3
/* 8054A154  41 82 00 0C */	beq lbl_8054A160
/* 8054A158  38 A0 00 3C */	li r5, 0x3c
/* 8054A15C  48 00 0D C1 */	bl aNSC_setupAction
lbl_8054A160:
/* 8054A160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A164  7C 08 03 A6 */	mtlr r0
/* 8054A168  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A16C  4E 80 00 20 */	blr 

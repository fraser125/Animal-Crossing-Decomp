lbl_8055E140:
/* 8055E140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E144  7C 08 02 A6 */	mflr r0
/* 8055E148  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055E14C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055E150  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E154  3C A5 00 02 */	addis r5, r5, 2
/* 8055E158  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 8055E15C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8055E160  7C 00 18 40 */	cmplw r0, r3
/* 8055E164  41 82 00 0C */	beq lbl_8055E170
/* 8055E168  38 A0 00 3C */	li r5, 0x3c
/* 8055E16C  48 00 0C 65 */	bl aNSC_setupAction
lbl_8055E170:
/* 8055E170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E174  7C 08 03 A6 */	mtlr r0
/* 8055E178  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E17C  4E 80 00 20 */	blr 

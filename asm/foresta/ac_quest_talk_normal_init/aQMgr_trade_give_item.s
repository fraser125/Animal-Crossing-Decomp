lbl_80493004:
/* 80493004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493008  7C 08 02 A6 */	mflr r0
/* 8049300C  2C 04 FF FF */	cmpwi r4, -1
/* 80493010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493014  41 82 00 30 */	beq lbl_80493044
/* 80493018  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8049301C  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493020  38 E6 85 38 */	addi r7, r6, common_data@l /* 0x81138538@l */
/* 80493024  54 60 08 3C */	slwi r0, r3, 1
/* 80493028  38 65 EC A4 */	addi r3, r5, l_normal_info@l /* 0x811CECA4@l */
/* 8049302C  38 C0 00 00 */	li r6, 0
/* 80493030  3C E7 00 02 */	addis r7, r7, 2
/* 80493034  7C A3 02 14 */	add r5, r3, r0
/* 80493038  80 67 61 3C */	lwz r3, 0x613c(r7)
/* 8049303C  A0 A5 00 14 */	lhz r5, 0x14(r5)
/* 80493040  4B F4 DD E9 */	bl mPr_SetPossessionItem
lbl_80493044:
/* 80493044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493048  7C 08 03 A6 */	mtlr r0
/* 8049304C  38 21 00 10 */	addi r1, r1, 0x10
/* 80493050  4E 80 00 20 */	blr 

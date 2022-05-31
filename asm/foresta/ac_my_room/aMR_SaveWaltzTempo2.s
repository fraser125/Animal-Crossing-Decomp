lbl_80472B84:
/* 80472B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80472B88  7C 08 02 A6 */	mflr r0
/* 80472B8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80472B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80472B94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80472B98  3C 63 00 02 */	addis r3, r3, 2
/* 80472B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80472BA0  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 80472BA4  28 03 00 00 */	cmplwi r3, 0
/* 80472BA8  41 82 00 20 */	beq lbl_80472BC8
/* 80472BAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80472BB0  28 03 00 00 */	cmplwi r3, 0
/* 80472BB4  41 82 00 14 */	beq lbl_80472BC8
/* 80472BB8  7C 7F 1B 78 */	mr r31, r3
/* 80472BBC  4B FF FF 75 */	bl aMR_SaveWaltzTempo
/* 80472BC0  7F E3 FB 78 */	mr r3, r31
/* 80472BC4  4B FF DD 11 */	bl aMR_SaveHaniwaStepData
lbl_80472BC8:
/* 80472BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80472BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80472BD0  7C 08 03 A6 */	mtlr r0
/* 80472BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80472BD8  4E 80 00 20 */	blr 

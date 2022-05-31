lbl_80380B78:
/* 80380B78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80380B7C  7C 08 02 A6 */	mflr r0
/* 80380B80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80380B84  38 81 00 14 */	addi r4, r1, 0x14
/* 80380B88  38 A1 00 08 */	addi r5, r1, 8
/* 80380B8C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80380B90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80380B94  7C 7F 1B 78 */	mr r31, r3
/* 80380B98  4B FF FE 15 */	bl Camera2_CalcPos_Demo
/* 80380B9C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80380BA0  7F E3 FB 78 */	mr r3, r31
/* 80380BA4  38 81 00 14 */	addi r4, r1, 0x14
/* 80380BA8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80380BAC  38 C0 00 00 */	li r6, 0
/* 80380BB0  4B FF E2 31 */	bl Camera2_SetCameraParameter
/* 80380BB4  7F E3 FB 78 */	mr r3, r31
/* 80380BB8  4B FF D3 85 */	bl Camera2_SetView
/* 80380BBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80380BC0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80380BC4  7C 08 03 A6 */	mtlr r0
/* 80380BC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80380BCC  4E 80 00 20 */	blr 

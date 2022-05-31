lbl_8042E128:
/* 8042E128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042E12C  7C 08 02 A6 */	mflr r0
/* 8042E130  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042E134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042E138  7C 9F 23 78 */	mr r31, r4
/* 8042E13C  93 C1 00 08 */	stw r30, 8(r1)
/* 8042E140  7C 7E 1B 78 */	mr r30, r3
/* 8042E144  38 7E 01 74 */	addi r3, r30, 0x174
/* 8042E148  4B FF FD 05 */	bl aMSN_DustclothCT
/* 8042E14C  7F E4 FB 78 */	mr r4, r31
/* 8042E150  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8042E154  4B FF FE E9 */	bl aMSN_MisinCT
/* 8042E158  7F C3 F3 78 */	mr r3, r30
/* 8042E15C  7F E4 FB 78 */	mr r4, r31
/* 8042E160  4B FF FF 7D */	bl aMSN_SetClipInfo
/* 8042E164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042E168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042E16C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042E170  7C 08 03 A6 */	mtlr r0
/* 8042E174  38 21 00 10 */	addi r1, r1, 0x10
/* 8042E178  4E 80 00 20 */	blr 

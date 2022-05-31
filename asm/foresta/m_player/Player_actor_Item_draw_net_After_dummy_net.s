lbl_804E1C38:
/* 804E1C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1C3C  7C 08 02 A6 */	mflr r0
/* 804E1C40  7C 65 1B 78 */	mr r5, r3
/* 804E1C44  38 C0 00 01 */	li r6, 1
/* 804E1C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1C4C  A8 85 0E 5E */	lha r4, 0xe5e(r5)
/* 804E1C50  A8 63 0E 5C */	lha r3, 0xe5c(r3)
/* 804E1C54  A8 A5 0E 60 */	lha r5, 0xe60(r5)
/* 804E1C58  4B F2 AD 3D */	bl Matrix_rotateXYZ
/* 804E1C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1C60  7C 08 03 A6 */	mtlr r0
/* 804E1C64  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1C68  4E 80 00 20 */	blr 

lbl_8052FA0C:
/* 8052FA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FA10  7C 08 02 A6 */	mflr r0
/* 8052FA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FA18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052FA1C  7C 7F 1B 78 */	mr r31, r3
/* 8052FA20  A8 83 09 24 */	lha r4, 0x924(r3)
/* 8052FA24  38 7F 00 DE */	addi r3, r31, 0xde
/* 8052FA28  A8 BF 09 26 */	lha r5, 0x926(r31)
/* 8052FA2C  4B E8 B1 19 */	bl chase_angle
/* 8052FA30  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8052FA34  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8052FA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FA3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052FA40  7C 08 03 A6 */	mtlr r0
/* 8052FA44  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FA48  4E 80 00 20 */	blr 

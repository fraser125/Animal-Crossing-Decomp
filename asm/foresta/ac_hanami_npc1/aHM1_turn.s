lbl_8052A4C4:
/* 8052A4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A4C8  7C 08 02 A6 */	mflr r0
/* 8052A4CC  38 A0 08 00 */	li r5, 0x800
/* 8052A4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A4D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052A4D8  7C 7F 1B 78 */	mr r31, r3
/* 8052A4DC  A8 83 09 24 */	lha r4, 0x924(r3)
/* 8052A4E0  38 7F 00 DE */	addi r3, r31, 0xde
/* 8052A4E4  4B E9 06 61 */	bl chase_angle
/* 8052A4E8  2C 03 00 01 */	cmpwi r3, 1
/* 8052A4EC  40 82 00 14 */	bne lbl_8052A500
/* 8052A4F0  38 60 00 01 */	li r3, 1
/* 8052A4F4  38 00 00 FF */	li r0, 0xff
/* 8052A4F8  90 7F 09 98 */	stw r3, 0x998(r31)
/* 8052A4FC  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_8052A500:
/* 8052A500  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8052A504  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8052A508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052A510  7C 08 03 A6 */	mtlr r0
/* 8052A514  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A518  4E 80 00 20 */	blr 

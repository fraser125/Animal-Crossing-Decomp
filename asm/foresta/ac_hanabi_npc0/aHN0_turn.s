lbl_805288E8:
/* 805288E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805288EC  7C 08 02 A6 */	mflr r0
/* 805288F0  38 A0 08 00 */	li r5, 0x800
/* 805288F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805288F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805288FC  7C 7F 1B 78 */	mr r31, r3
/* 80528900  A8 83 09 24 */	lha r4, 0x924(r3)
/* 80528904  38 7F 00 DE */	addi r3, r31, 0xde
/* 80528908  4B E9 22 3D */	bl chase_angle
/* 8052890C  2C 03 00 01 */	cmpwi r3, 1
/* 80528910  40 82 00 14 */	bne lbl_80528924
/* 80528914  38 60 00 01 */	li r3, 1
/* 80528918  38 00 00 FF */	li r0, 0xff
/* 8052891C  90 7F 09 98 */	stw r3, 0x998(r31)
/* 80528920  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_80528924:
/* 80528924  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80528928  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8052892C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80528934  7C 08 03 A6 */	mtlr r0
/* 80528938  38 21 00 10 */	addi r1, r1, 0x10
/* 8052893C  4E 80 00 20 */	blr 

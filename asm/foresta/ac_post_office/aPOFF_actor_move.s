lbl_805B82C0:
/* 805B82C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B82C4  7C 08 02 A6 */	mflr r0
/* 805B82C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B82CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B82D0  7C 7F 1B 78 */	mr r31, r3
/* 805B82D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B82D8  7C 9E 23 78 */	mr r30, r4
/* 805B82DC  4B FF F8 E5 */	bl aPOFF_set_doorSE
/* 805B82E0  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805B82E4  7F E3 FB 78 */	mr r3, r31
/* 805B82E8  7F C4 F3 78 */	mr r4, r30
/* 805B82EC  7D 89 03 A6 */	mtctr r12
/* 805B82F0  4E 80 04 21 */	bctrl 
/* 805B82F4  80 1F 02 B4 */	lwz r0, 0x2b4(r31)
/* 805B82F8  7F E3 FB 78 */	mr r3, r31
/* 805B82FC  B0 01 00 08 */	sth r0, 8(r1)
/* 805B8300  4B FF FD 89 */	bl aPOFF_ctrl_light
/* 805B8304  2C 03 00 00 */	cmpwi r3, 0
/* 805B8308  41 82 00 18 */	beq lbl_805B8320
/* 805B830C  38 61 00 08 */	addi r3, r1, 8
/* 805B8310  38 80 3F FF */	li r4, 0x3fff
/* 805B8314  38 A0 01 40 */	li r5, 0x140
/* 805B8318  4B E0 28 E1 */	bl chase_s
/* 805B831C  48 00 00 14 */	b lbl_805B8330
lbl_805B8320:
/* 805B8320  38 61 00 08 */	addi r3, r1, 8
/* 805B8324  38 80 00 00 */	li r4, 0
/* 805B8328  38 A0 01 40 */	li r5, 0x140
/* 805B832C  4B E0 28 CD */	bl chase_s
lbl_805B8330:
/* 805B8330  A8 01 00 08 */	lha r0, 8(r1)
/* 805B8334  90 1F 02 B4 */	stw r0, 0x2b4(r31)
/* 805B8338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B833C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B8340  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B8344  7C 08 03 A6 */	mtlr r0
/* 805B8348  38 21 00 20 */	addi r1, r1, 0x20
/* 805B834C  4E 80 00 20 */	blr 

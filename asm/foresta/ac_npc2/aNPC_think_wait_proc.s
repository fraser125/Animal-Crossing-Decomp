lbl_805424F8:
/* 805424F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805424FC  7C 08 02 A6 */	mflr r0
/* 80542500  2C 05 00 00 */	cmpwi r5, 0
/* 80542504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542508  40 82 00 08 */	bne lbl_80542510
/* 8054250C  4B FF FF B9 */	bl aNPC_think_wait_init_proc
lbl_80542510:
/* 80542510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542514  7C 08 03 A6 */	mtlr r0
/* 80542518  38 21 00 10 */	addi r1, r1, 0x10
/* 8054251C  4E 80 00 20 */	blr 

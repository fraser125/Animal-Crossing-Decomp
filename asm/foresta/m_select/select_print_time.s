lbl_80629250:
/* 80629250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80629254  7C 08 02 A6 */	mflr r0
/* 80629258  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062925C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80629260  7C 9F 23 78 */	mr r31, r4
/* 80629264  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80629268  7C 7E 1B 78 */	mr r30, r3
/* 8062926C  38 61 00 08 */	addi r3, r1, 8
/* 80629270  4B DD D4 AD */	bl lbRTC_GetTime
/* 80629274  7F C3 F3 78 */	mr r3, r30
/* 80629278  7F E4 FB 78 */	mr r4, r31
/* 8062927C  38 A1 00 08 */	addi r5, r1, 8
/* 80629280  4B FF FD A9 */	bl select_print_time_sub
/* 80629284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80629288  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062928C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80629290  7C 08 03 A6 */	mtlr r0
/* 80629294  38 21 00 20 */	addi r1, r1, 0x20
/* 80629298  4E 80 00 20 */	blr 
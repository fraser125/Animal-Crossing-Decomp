lbl_805F872C:
/* 805F872C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 805F8730  7C 08 02 A6 */	mflr r0
/* 805F8734  90 01 01 44 */	stw r0, 0x144(r1)
/* 805F8738  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 805F873C  7C 9F 23 78 */	mr r31, r4
/* 805F8740  93 C1 01 38 */	stw r30, 0x138(r1)
/* 805F8744  7C 7E 1B 78 */	mr r30, r3
/* 805F8748  7F C4 F3 78 */	mr r4, r30
/* 805F874C  38 61 00 08 */	addi r3, r1, 8
/* 805F8750  4B DC 42 25 */	bl mMl_copy_mail
/* 805F8754  7F C3 F3 78 */	mr r3, r30
/* 805F8758  7F E4 FB 78 */	mr r4, r31
/* 805F875C  4B DC 42 19 */	bl mMl_copy_mail
/* 805F8760  7F E3 FB 78 */	mr r3, r31
/* 805F8764  38 81 00 08 */	addi r4, r1, 8
/* 805F8768  4B DC 42 0D */	bl mMl_copy_mail
/* 805F876C  80 01 01 44 */	lwz r0, 0x144(r1)
/* 805F8770  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 805F8774  83 C1 01 38 */	lwz r30, 0x138(r1)
/* 805F8778  7C 08 03 A6 */	mtlr r0
/* 805F877C  38 21 01 40 */	addi r1, r1, 0x140
/* 805F8780  4E 80 00 20 */	blr 

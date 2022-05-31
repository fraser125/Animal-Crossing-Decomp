lbl_805D9E9C:
/* 805D9E9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D9EA0  7C 08 02 A6 */	mflr r0
/* 805D9EA4  38 A0 00 1F */	li r5, 0x1f
/* 805D9EA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D9EAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805D9EB0  7C 7F 1B 78 */	mr r31, r3
/* 805D9EB4  38 61 00 08 */	addi r3, r1, 8
/* 805D9EB8  38 9F 00 01 */	addi r4, r31, 1
/* 805D9EBC  4B DE 0B 69 */	bl func_803BAA24
/* 805D9EC0  38 00 00 20 */	li r0, 0x20
/* 805D9EC4  7F E3 FB 78 */	mr r3, r31
/* 805D9EC8  98 01 00 27 */	stb r0, 0x27(r1)
/* 805D9ECC  38 81 00 08 */	addi r4, r1, 8
/* 805D9ED0  38 A0 00 20 */	li r5, 0x20
/* 805D9ED4  4B DE 0B 51 */	bl func_803BAA24
/* 805D9ED8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D9EDC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805D9EE0  7C 08 03 A6 */	mtlr r0
/* 805D9EE4  38 21 00 30 */	addi r1, r1, 0x30
/* 805D9EE8  4E 80 00 20 */	blr 

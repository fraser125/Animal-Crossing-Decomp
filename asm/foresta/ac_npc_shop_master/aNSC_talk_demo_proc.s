lbl_80577320:
/* 80577320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80577324  7C 08 02 A6 */	mflr r0
/* 80577328  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057732C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80577330  7C 7F 1B 78 */	mr r31, r3
/* 80577334  38 60 00 08 */	li r3, 8
/* 80577338  7F E4 FB 78 */	mr r4, r31
/* 8057733C  4B E2 2F 29 */	bl mDemo_Check
/* 80577340  2C 03 00 01 */	cmpwi r3, 1
/* 80577344  41 82 00 18 */	beq lbl_8057735C
/* 80577348  7F E4 FB 78 */	mr r4, r31
/* 8057734C  38 60 00 07 */	li r3, 7
/* 80577350  4B E2 2F 15 */	bl mDemo_Check
/* 80577354  2C 03 00 01 */	cmpwi r3, 1
/* 80577358  40 82 00 24 */	bne lbl_8057737C
lbl_8057735C:
/* 8057735C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80577360  7F E3 FB 78 */	mr r3, r31
/* 80577364  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80577368  3C 84 00 02 */	addis r4, r4, 2
/* 8057736C  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 80577370  81 84 01 10 */	lwz r12, 0x110(r4)
/* 80577374  7D 89 03 A6 */	mtctr r12
/* 80577378  4E 80 04 21 */	bctrl 
lbl_8057737C:
/* 8057737C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80577380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80577384  7C 08 03 A6 */	mtlr r0
/* 80577388  38 21 00 10 */	addi r1, r1, 0x10
/* 8057738C  4E 80 00 20 */	blr 

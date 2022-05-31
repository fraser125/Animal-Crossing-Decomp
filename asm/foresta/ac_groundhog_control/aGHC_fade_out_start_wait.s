lbl_80515A5C:
/* 80515A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515A60  7C 08 02 A6 */	mflr r0
/* 80515A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80515A6C  7C 7F 1B 78 */	mr r31, r3
/* 80515A70  80 63 01 80 */	lwz r3, 0x180(r3)
/* 80515A74  38 03 FF FF */	addi r0, r3, -1
/* 80515A78  90 1F 01 80 */	stw r0, 0x180(r31)
/* 80515A7C  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 80515A80  2C 00 00 00 */	cmpwi r0, 0
/* 80515A84  41 81 00 34 */	bgt lbl_80515AB8
/* 80515A88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80515A8C  38 00 00 01 */	li r0, 1
/* 80515A90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80515A94  3C 63 00 03 */	addis r3, r3, 3
/* 80515A98  98 03 85 C7 */	stb r0, -0x7a39(r3)
/* 80515A9C  4B E6 6A 15 */	bl mBGMPsComp_delete_ps_quietField
/* 80515AA0  38 60 01 68 */	li r3, 0x168
/* 80515AA4  38 80 00 3C */	li r4, 0x3c
/* 80515AA8  4B E6 61 61 */	bl mBGMPsComp_make_ps_co_quiet
/* 80515AAC  7F E3 FB 78 */	mr r3, r31
/* 80515AB0  38 80 00 08 */	li r4, 8
/* 80515AB4  48 00 00 19 */	bl aGHC_setupAction
lbl_80515AB8:
/* 80515AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80515ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80515AC0  7C 08 03 A6 */	mtlr r0
/* 80515AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80515AC8  4E 80 00 20 */	blr 

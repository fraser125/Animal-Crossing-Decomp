lbl_8056C740:
/* 8056C740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056C744  7C 08 02 A6 */	mflr r0
/* 8056C748  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8056C74C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056C750  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C754  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8056C758  7C 60 22 14 */	add r3, r0, r4
/* 8056C75C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056C760  3C 63 00 01 */	addis r3, r3, 1
/* 8056C764  3B E0 00 00 */	li r31, 0
/* 8056C768  38 80 00 0A */	li r4, 0xa
/* 8056C76C  38 63 B7 18 */	addi r3, r3, -18664
/* 8056C770  4B E5 01 35 */	bl mMl_chk_mail_free_space
/* 8056C774  2C 03 FF FF */	cmpwi r3, -1
/* 8056C778  41 82 00 08 */	beq lbl_8056C780
/* 8056C77C  3B E0 00 01 */	li r31, 1
lbl_8056C780:
/* 8056C780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056C784  7F E3 FB 78 */	mr r3, r31
/* 8056C788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056C78C  7C 08 03 A6 */	mtlr r0
/* 8056C790  38 21 00 10 */	addi r1, r1, 0x10
/* 8056C794  4E 80 00 20 */	blr 

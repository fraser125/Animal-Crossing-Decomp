lbl_803CC720:
/* 803CC720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CC724  7C 08 02 A6 */	mflr r0
/* 803CC728  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803CC72C  7C 64 1B 78 */	mr r4, r3
/* 803CC730  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CC734  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803CC738  3C 63 00 01 */	addis r3, r3, 1
/* 803CC73C  38 A0 00 0F */	li r5, 0xf
/* 803CC740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CC744  3B E0 00 00 */	li r31, 0
/* 803CC748  38 63 74 38 */	addi r3, r3, 0x7438
/* 803CC74C  4B FF FF 91 */	bl mNpc_SearchAnimalinfo
/* 803CC750  2C 03 FF FF */	cmpwi r3, -1
/* 803CC754  41 82 00 1C */	beq lbl_803CC770
/* 803CC758  1C 83 09 88 */	mulli r4, r3, 0x988
/* 803CC75C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CC760  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803CC764  7C 60 22 14 */	add r3, r0, r4
/* 803CC768  3F E3 00 01 */	addis r31, r3, 1
/* 803CC76C  3B FF 74 38 */	addi r31, r31, 0x7438
lbl_803CC770:
/* 803CC770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CC774  7F E3 FB 78 */	mr r3, r31
/* 803CC778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CC77C  7C 08 03 A6 */	mtlr r0
/* 803CC780  38 21 00 10 */	addi r1, r1, 0x10
/* 803CC784  4E 80 00 20 */	blr 

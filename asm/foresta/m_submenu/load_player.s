lbl_803EF5FC:
/* 803EF5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF600  7C 08 02 A6 */	mflr r0
/* 803EF604  3C A0 80 66 */	lis r5, SubmenuArea_dlftbl@ha /* 0x8065DCEC@ha */
/* 803EF608  3C 80 81 17 */	lis r4, data_81171538@ha /* 0x81171538@ha */
/* 803EF60C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF610  38 A5 DC EC */	addi r5, r5, SubmenuArea_dlftbl@l /* 0x8065DCEC@l */
/* 803EF614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EF618  3B E5 00 1C */	addi r31, r5, 0x1c
/* 803EF61C  93 C1 00 08 */	stw r30, 8(r1)
/* 803EF620  7C 7E 1B 78 */	mr r30, r3
/* 803EF624  80 64 15 38 */	lwz r3, data_81171538@l(r4)  /* 0x81171538@l */
/* 803EF628  7C 03 F8 40 */	cmplw r3, r31
/* 803EF62C  41 82 00 24 */	beq lbl_803EF650
/* 803EF630  28 03 00 00 */	cmplwi r3, 0
/* 803EF634  41 82 00 0C */	beq lbl_803EF640
/* 803EF638  7F C4 F3 78 */	mr r4, r30
/* 803EF63C  4B FF FE 7D */	bl SubmenuArea_DoUnlink
lbl_803EF640:
/* 803EF640  7F E3 FB 78 */	mr r3, r31
/* 803EF644  7F C4 F3 78 */	mr r4, r30
/* 803EF648  38 A0 00 01 */	li r5, 1
/* 803EF64C  4B FF FE 39 */	bl SubmenuArea_DoLink
lbl_803EF650:
/* 803EF650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EF658  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EF65C  7C 08 03 A6 */	mtlr r0
/* 803EF660  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF664  4E 80 00 20 */	blr 
